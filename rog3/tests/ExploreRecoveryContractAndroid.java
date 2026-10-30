import dalvik.system.DexClassLoader;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.List;

/** Load the built APK's actual Smali on ART; this does not operate the game or dispatch gestures. */
public final class ExploreRecoveryContractAndroid {
    static int checks;
    static void check(boolean ok, String message) {
        checks++;
        if (!ok) throw new AssertionError(message);
    }
    static Method method(Class<?> type, String name, Class<?>... parameters) throws Exception {
        Method m = type.getDeclaredMethod(name, parameters);
        m.setAccessible(true);
        return m;
    }
    public static void main(String[] args) throws Exception {
        ClassLoader loader = new DexClassLoader(args[0], null, null,
                ExploreRecoveryContractAndroid.class.getClassLoader());
        String pkg = "com.pikminx.helper.";
        Class<?> session = loader.loadClass(pkg + "ExpeditionDispatchSession");
        Constructor<?> create = session.getDeclaredConstructor(int.class, long.class);
        create.setAccessible(true);
        Object run = create.newInstance(19, 0L);
        Method recover = method(session, "confirmExploreTab", String.class, long.class);
        check(recover.invoke(run,"tab",100L).toString().equals("WAIT"),"one frame");
        check(recover.invoke(run,"tab",120L).toString().equals("READY"),"two frames");
        check(recover.invoke(run,"tab",200L).toString().equals("WAIT"),"settle time");
        check(recover.invoke(run,"tab",3120L).toString().equals("WAIT"),"fresh retry evidence");
        check(recover.invoke(run,"tab",3140L).toString().equals("READY"),"second tap");
        check(recover.invoke(run,"tab",6140L).toString().equals("STAGE_TIMEOUT"),"bounded retry");
        check(method(session,"completedCount").invoke(run).equals(0),"no fake completion");
        Object deadline = create.newInstance(19, 0L);
        recover.invoke(deadline,"tab",100L);
        recover.invoke(deadline,"tab",120L);
        check(recover.invoke(deadline,"tab",24000L).toString().equals("STAGE_TIMEOUT"),"deadline unchanged");
        Object interrupted = create.newInstance(19,0L);
        recover.invoke(interrupted,"tab",100L);
        method(session,"confirm",String.class,long.class).invoke(interrupted,"",110L);
        check(recover.invoke(interrupted,"tab",120L).toString().equals("WAIT"),"missing frame breaks evidence");
        Class<?> token = loader.loadClass(pkg + "PetalMatcher$Token");
        Constructor<?> makeToken = token.getDeclaredConstructor(String.class,int.class,int.class,int.class,int.class);
        makeToken.setAccessible(true);
        Object left=makeToken.newInstance("花苗",410,980,470,1020);
        Object tab=makeToken.newInstance("探險",670,980,730,1020);
        Object right=makeToken.newInstance("明信片",870,980,930,1020);
        Class<?> policy = loader.loadClass(pkg + "RogExplorePanelPull");
        Method anchor = method(policy,"recoveryTab",List.class,int.class,int.class);
        check(anchor.invoke(null,List.of(left,tab,right),1080,2340)!=null,"navigation anchor");
        check(anchor.invoke(null,List.of(tab),1080,2340)==null,"reject isolated label");
        Class<?> service = loader.loadClass(pkg + "PetalAccessibilityService");
        method(service,"tryRecoverDispatchExploreTab",List.class,android.graphics.Bitmap.class,long.class);
        check(true,"service method verifies and is present in built APK");
        System.out.println("Android ART explore recovery: " + checks + " checks passed; no game UI or real dispatch verified");
    }
}
