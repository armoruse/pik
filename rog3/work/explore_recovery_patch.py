"""Minimal dispatch recovery hooks shared by the handover and current-phone patch paths."""

SESSION_METHOD = '''
.method confirmExploreTab(Ljava/lang/String;J)Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;
    .locals 6
    iget-wide v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stageStartedAt:J
    sub-long v0, p2, v0
    const-wide/16 v2, 0x5dc0
    cmp-long v0, v0, v2
    if-gez v0, :recovery_timeout
    iget-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stage:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;
    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->LIST_SEARCH:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;
    if-ne v0, v1, :recovery_wait
    iget-boolean v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->transitionPending:Z
    if-nez v0, :recovery_wait
    iget v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->completedCount:I
    iget v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->exploreRecoveryItem:I
    if-eq v0, v1, :recovery_budget
    iput v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->exploreRecoveryItem:I
    const/4 v0, 0x0
    iput v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->exploreRecoveryTaps:I
    const-wide/16 v0, 0x0
    iput-wide v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->exploreRecoveryAt:J
    :recovery_budget
    iget v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->exploreRecoveryTaps:I
    if-eqz v0, :recovery_confirm
    iget-wide v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->exploreRecoveryAt:J
    sub-long v1, p2, v1
    const-wide/16 v3, 0xbb8
    cmp-long v1, v1, v3
    if-gez v1, :recovery_limit
    const-string v0, ""
    invoke-virtual {p0, v0, p2, p3}, Lcom/pikminx/helper/ExpeditionDispatchSession;->confirm(Ljava/lang/String;J)Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;
    goto :recovery_wait
    :recovery_limit
    const/4 v1, 0x2
    if-ge v0, v1, :recovery_timeout
    :recovery_confirm
    invoke-virtual {p0, p1, p2, p3}, Lcom/pikminx/helper/ExpeditionDispatchSession;->confirm(Ljava/lang/String;J)Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;
    move-result-object v0
    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;->READY:Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;
    if-ne v0, v1, :recovery_return
    iget v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->exploreRecoveryTaps:I
    add-int/lit8 v1, v1, 0x1
    iput v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->exploreRecoveryTaps:I
    iput-wide p2, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->exploreRecoveryAt:J
    const-string v1, ""
    iput-object v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->pendingKey:Ljava/lang/String;
    const/4 v1, 0x0
    iput v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->matchingFrames:I
    :recovery_return
    return-object v0
    :recovery_timeout
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;->STAGE_TIMEOUT:Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;
    return-object v0
    :recovery_wait
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;->WAIT:Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;
    return-object v0
.end method
'''

SERVICE_METHOD = '''
.method private tryRecoverDispatchExploreTab(Ljava/util/List;Landroid/graphics/Bitmap;J)Z
    .locals 3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I
    move-result v0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I
    move-result v1
    invoke-static {p1, v0, v1}, Lcom/pikminx/helper/RogExplorePanelPull;->recoveryTab(Ljava/util/List;II)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;
    move-result-object v0
    if-eqz v0, :recovery_no_anchor
    invoke-static {v0}, Lcom/pikminx/helper/RogExplorePanelPull;->recoveryKey(Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;)Ljava/lang/String;
    move-result-object v1
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService;->expeditionDispatchSession:Lcom/pikminx/helper/ExpeditionDispatchSession;
    invoke-virtual {v2, v1, p3, p4}, Lcom/pikminx/helper/ExpeditionDispatchSession;->confirmExploreTab(Ljava/lang/String;J)Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;
    move-result-object v1
    invoke-direct {p0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->handleDispatchConfirmation(Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;)Z
    move-result v1
    if-eqz v1, :recovery_wait_frame
    invoke-direct {p0, v0, p2}, Lcom/pikminx/helper/PetalAccessibilityService;->screenPointFromBitmap(Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;Landroid/graphics/Bitmap;)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;
    move-result-object v0
    sget v1, Lcom/pikminx/helper/R$string;->status_reward_wrong_page:I
    invoke-virtual {p0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;
    move-result-object v1
    new-instance v2, Lcom/pikminx/helper/RogExplorePanelPull$RecoveryTap;
    invoke-direct {v2}, Lcom/pikminx/helper/RogExplorePanelPull$RecoveryTap;-><init>()V
    invoke-direct {p0, v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->dispatchActionTap(Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;Ljava/lang/String;Ljava/lang/Runnable;)V
    goto :recovery_handled
    :recovery_wait_frame
    sget v0, Lcom/pikminx/helper/R$string;->status_reward_wrong_page:I
    invoke-virtual {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;
    move-result-object v0
    invoke-direct {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService;->waitForDispatchFrame(Ljava/lang/String;)V
    :recovery_handled
    const/4 v0, 0x1
    return v0
    :recovery_no_anchor
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService;->expeditionDispatchSession:Lcom/pikminx/helper/ExpeditionDispatchSession;
    const-string v1, ""
    invoke-virtual {v0, v1, p3, p4}, Lcom/pikminx/helper/ExpeditionDispatchSession;->confirm(Ljava/lang/String;J)Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;
    move-result-object v0
    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;->STAGE_TIMEOUT:Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;
    if-ne v0, v1, :recovery_no_timeout
    invoke-direct {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService;->handleDispatchConfirmation(Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;)Z
    goto :recovery_handled
    :recovery_no_timeout
    const/4 v0, 0x0
    return v0
.end method
'''

SERVICE_HOOK = '''
    move-object v0, v6
    move-object v1, v11
    move-object v2, v7
    move-wide v3, v9
    invoke-direct/range {v0 .. v4}, Lcom/pikminx/helper/PetalAccessibilityService;->tryRecoverDispatchExploreTab(Ljava/util/List;Landroid/graphics/Bitmap;J)Z
    move-result v0
    if-eqz v0, :rog_recovery_original
    return-void
    :rog_recovery_original
    const-string v1, ""
'''


def patch_session(text):
    if 'confirmExploreTab(' in text or 'exploreRecoveryTaps' in text:
        raise ValueError('探險狀態機已修正，停止重複套用')
    for field in ('stageStartedAt:J', 'stage:', 'transitionPending:Z', 'completedCount:I',
                  'pendingKey:', 'matchingFrames:I'):
        if field not in text:
            raise ValueError('探險狀態機版本不符：' + field)
    at = text.index('.method ')
    fields = ('.field private exploreRecoveryItem:I\n'
              '.field private exploreRecoveryTaps:I\n'
              '.field private exploreRecoveryAt:J\n\n')
    return text[:at] + fields + text[at:] + SESSION_METHOD


def patch_service(text):
    if 'tryRecoverDispatchExploreTab(' in text:
        raise ValueError('探險服務已修正，停止重複套用')
    start = text.index('.method private handleDispatchList(')
    end = text.index('.end method', start)
    body = text[start:end]
    expected = ('    .locals 13', 'move-object v6, p0', 'move-object v7, p2',
                'move-wide/from16 v9, p4', 'move-result-object v11')
    if not all(marker in body for marker in expected):
        raise ValueError('探險服務暫存器配置不符，停止套用')
    anchor = '    if-eq v8, v0, :cond_3\n'
    if body.count(anchor) != 1:
        raise ValueError('找不到唯一的探險清單分支，停止套用')
    body = body.replace(anchor, anchor + SERVICE_HOOK, 1)
    return text[:start] + body + text[end:] + SERVICE_METHOD
