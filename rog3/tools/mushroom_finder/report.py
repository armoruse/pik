"""Local HTML report with live destination clocks and expiring copy controls."""
import json

def render(result):
    data=json.dumps(result,ensure_ascii=False).replace('<','\\u003c').replace('>','\\u003e').replace('&','\\u0026')
    return '''<!doctype html><html lang="zh-Hant"><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><meta http-equiv="refresh" content="15">
<title>尋菇候選與當地時間</title><style>
body{background:#f3f6f2;color:#1b3028;font:17px system-ui;margin:0;padding:32px;max-width:1100px;margin:auto}h1{font-size:30px}header,p{line-height:1.7}.note{background:#fff1ce;padding:16px;border-radius:12px}article{background:white;border:1px solid #d6e2da;border-radius:16px;padding:20px;margin:16px 0}.clock{font-size:24px;font-weight:650}button{background:#176349;color:white;border:0;padding:12px;border-radius:8px;font-size:16px;cursor:pointer}button:disabled{background:#89938c;cursor:default}.stale{opacity:.65}.muted{color:#54665b}code{font-size:18px}#status{font-weight:600}small{line-height:1.7}</style>
<h1>尋菇候選與當地時間</h1><p class="note">只列 0～4 人的大型元素菇／已確認名稱的巨大活動菇。當地換日不代表帳號有免費次數；本工具不會參戰或使用蘑菇券。</p>
<p id="status"></p><p id="progress"></p><p id="tw"></p><main id="list"></main><small id="source"></small>
<script type="application/json" id="data">'''+data+'''</script><script>
const data=JSON.parse(document.getElementById('data').textContent), rows=[];
function node(tag,text,parent){const e=document.createElement(tag);e.textContent=text;parent.appendChild(e);return e}
const fmt=(zone,date)=>new Intl.DateTimeFormat('zh-TW',{timeZone:zone,year:'numeric',month:'2-digit',day:'2-digit',weekday:'short',hour:'2-digit',minute:'2-digit',second:'2-digit',hourCycle:'h23',timeZoneName:'longOffset'}).format(date);
const dateKey=(zone,date)=>new Intl.DateTimeFormat('en-CA',{timeZone:zone,year:'numeric',month:'2-digit',day:'2-digit'}).format(date);
const list=document.getElementById('list');
const progress=data.scan_progress;
if(progress){document.getElementById('progress').textContent=progress.available?'最近一輪儲存進度：完成 '+progress.completed_cells+' / '+progress.total_cells+' 區，失敗 '+progress.failed_cells+' 區。'+progress.note:progress.note;}
for(const r of data.matches){
 const a=node('article','',list);node('h2',r.name,a);node('p',r.kind+' · 觀察時 '+r.players+' 人'+(r.distance_m===null?'':' · 距離 '+r.distance_m+' 公尺'),a);
 const clock=node('p','',a);clock.className='clock';const day=node('p','',a);
 node('p','時區：'+(r.timezone||'尚未確認'),a);const coords=r.lat.toFixed(6)+','+r.lng.toFixed(6);node('code',coords,a);
 node('p','觀察時間（台灣）：'+fmt('Asia/Taipei',new Date(r.observed_at_ms)),a);const freshness=node('p','',a);
 const b=node('button','複製座標',a);b.onclick=async()=>{if(Date.now()>=r.valid_until_ms||!r.timezone){b.disabled=true;return}try{await navigator.clipboard.writeText(coords);b.textContent='已複製'}catch{b.textContent='請選取上方座標複製'}};
 rows.push({r,a,clock,day,freshness,b});
}
function update(){const now=new Date();document.getElementById('tw').textContent='台灣現在：'+fmt('Asia/Taipei',now);let valid=0;
 for(const x of rows){const stale=now.getTime()>=x.r.valid_until_ms;
 x.a.classList.toggle('stale',stale);x.b.disabled=stale||!x.r.timezone;
 x.freshness.textContent=stale?'紀錄已過期，請重新掃描':'尚餘 '+Math.ceil((x.r.valid_until_ms-now)/1000)+' 秒有效；人數可能已變動';
 if(x.r.timezone){x.clock.textContent='當地現在：'+fmt(x.r.timezone,now);x.day.textContent=dateKey(x.r.timezone,now)===dateKey('Asia/Taipei',now)?'當地與台灣是同一日期':'當地日期與台灣不同，請核對上方日期';}else{x.clock.textContent='當地時區尚未確認'}
 if(!stale&&x.r.timezone)valid++;
 }
 document.getElementById('status').textContent=data.error?'掃描資料尚未就緒：'+data.error:data.source_record_count===0?'尚無掃描紀錄，請先在 gpsGo 完成區域掃描':valid?'目前 '+valid+' 筆尚未過期的候選':'目前沒有可用的近期候選；不代表全球沒有符合條件的菇';
}
document.getElementById('source').textContent='來源：gpsGo 已有掃描紀錄，共 '+(data.source_record_count??0)+' 筆。時鐘每秒更新；此頁每 15 秒重新載入。請保持篩選器執行，才能取得新紀錄。';update();setInterval(update,1000);
</script></html>'''
