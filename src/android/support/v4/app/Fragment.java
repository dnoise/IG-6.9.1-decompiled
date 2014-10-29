// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.facebook.e.b.a.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.HashMap;

// Referenced classes of package android.support.v4.app:
//            u, h, i, r, 
//            ap, cu, e, k, 
//            g, s, an

public class Fragment
    implements ComponentCallbacks, android.view.View.OnCreateContextMenuListener
{

    private static final HashMap a = new HashMap();
    boolean A;
    int B;
    u C;
    r D;
    u E;
    Fragment F;
    int G;
    int H;
    String I;
    boolean J;
    boolean K;
    boolean L;
    boolean M;
    boolean N;
    boolean O;
    boolean P;
    int Q;
    ViewGroup R;
    View S;
    View T;
    boolean U;
    boolean V;
    ap W;
    boolean X;
    boolean Y;
    g Z;
    private LayoutInflater b;
    int j;
    View k;
    int l;
    Bundle m;
    SparseArray n;
    int o;
    int p;
    String q;
    Bundle r;
    Fragment s;
    int t;
    int u;
    boolean v;
    boolean w;
    boolean x;
    boolean y;
    boolean z;

    public Fragment()
    {
        j = 0;
        o = -1;
        t = -1;
        O = true;
        V = true;
    }

    public static void C()
    {
    }

    public static Animation D()
    {
        return null;
    }

    public static void J()
    {
    }

    private boolean W()
    {
        return J;
    }

    private void Y()
    {
        E = new u();
        E.a(D, new h(this), this);
    }

    private void Z()
    {
        k_();
    }

    public static Fragment a(Context context, String s1)
    {
        return a(context, s1, ((Bundle) (null)));
    }

    public static Fragment a(Context context, String s1, Bundle bundle)
    {
        Class class1;
        Fragment fragment;
        try
        {
            class1 = (Class)a.get(s1);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw new i((new StringBuilder("Unable to instantiate fragment ")).append(s1).append(": make sure class name exists, is public, and has an empty constructor that is public").toString(), classnotfoundexception);
        }
        catch (InstantiationException instantiationexception)
        {
            throw new i((new StringBuilder("Unable to instantiate fragment ")).append(s1).append(": make sure class name exists, is public, and has an empty constructor that is public").toString(), instantiationexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new i((new StringBuilder("Unable to instantiate fragment ")).append(s1).append(": make sure class name exists, is public, and has an empty constructor that is public").toString(), illegalaccessexception);
        }
        if (class1 != null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        class1 = context.getClassLoader().loadClass(s1);
        a.put(s1, class1);
        fragment = (Fragment)class1.newInstance();
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        bundle.setClassLoader(fragment.getClass().getClassLoader());
        fragment.r = bundle;
        return fragment;
    }

    private void aa()
    {
        F();
    }

    private void ab()
    {
        G();
    }

    private void ad()
    {
        l_();
    }

    private void ae()
    {
        m_();
    }

    private void af()
    {
        H();
    }

    private View b(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return a(layoutinflater, viewgroup);
    }

    private void c(Bundle bundle)
    {
        a(bundle);
    }

    private void l(Bundle bundle)
    {
        d(bundle);
    }

    public static void w()
    {
    }

    public final void A()
    {
        P = true;
    }

    public final void B()
    {
        P = true;
    }

    public final View E()
    {
        return S;
    }

    public void F()
    {
        P = true;
    }

    public void G()
    {
        P = true;
    }

    public void H()
    {
        P = true;
        if (!Y)
        {
            Y = true;
            W = D.a(q, X, false);
        }
        if (W != null)
        {
            W.h();
        }
    }

    final void I()
    {
        o = -1;
        q = null;
        v = false;
        w = false;
        x = false;
        y = false;
        z = false;
        A = false;
        B = 0;
        C = null;
        D = null;
        G = 0;
        H = 0;
        I = null;
        J = false;
        K = false;
        M = false;
        W = null;
        X = false;
        Y = false;
    }

    final void K()
    {
        if (E != null)
        {
            E.l();
            E.i();
        }
        P = false;
        Z();
        if (!P)
        {
            throw new cu((new StringBuilder("Fragment ")).append(this).append(" did not call through to super.onStart()").toString());
        }
        if (E != null)
        {
            E.o();
        }
        if (W != null)
        {
            W.g();
        }
    }

    final void L()
    {
        if (E != null)
        {
            E.l();
            E.i();
        }
        P = false;
        aa();
        if (!P)
        {
            throw new cu((new StringBuilder("Fragment ")).append(this).append(" did not call through to super.onResume()").toString());
        }
        if (E != null)
        {
            E.p();
            E.i();
        }
    }

    final void M()
    {
        onLowMemory();
        if (E != null)
        {
            E.v();
        }
    }

    final void N()
    {
        if (!J && E != null)
        {
            E.x();
        }
    }

    final View O()
    {
        boolean flag = J;
        View view = null;
        if (!flag)
        {
            if (N)
            {
                boolean _tmp = O;
            }
            view = E.w();
        }
        return view;
    }

    final MenuInflater P()
    {
        if (!J && N)
        {
            if (!O);
        }
        return null;
    }

    final void Q()
    {
        if (E != null)
        {
            E.q();
        }
        P = false;
        ab();
        if (!P)
        {
            throw new cu((new StringBuilder("Fragment ")).append(this).append(" did not call through to super.onPause()").toString());
        } else
        {
            return;
        }
    }

    final void R()
    {
        if (E != null)
        {
            E.r();
        }
        P = false;
        ad();
        if (!P)
        {
            throw new cu((new StringBuilder("Fragment ")).append(this).append(" did not call through to super.onStop()").toString());
        } else
        {
            return;
        }
    }

    final void S()
    {
label0:
        {
            if (E != null)
            {
                E.s();
            }
            if (X)
            {
                X = false;
                if (!Y)
                {
                    Y = true;
                    W = D.a(q, X, false);
                }
                if (W != null)
                {
                    if (D.h())
                    {
                        break label0;
                    }
                    W.c();
                }
            }
            return;
        }
        W.d();
    }

    final void T()
    {
        if (E != null)
        {
            E.t();
        }
        P = false;
        ae();
        if (!P)
        {
            throw new cu((new StringBuilder("Fragment ")).append(this).append(" did not call through to super.onDestroyView()").toString());
        }
        if (W != null)
        {
            W.f();
        }
    }

    final void U()
    {
        if (E != null)
        {
            E.u();
            E = null;
        }
        P = false;
        af();
        if (!P)
        {
            throw new cu((new StringBuilder("Fragment ")).append(this).append(" did not call through to super.onDestroy()").toString());
        } else
        {
            return;
        }
    }

    public View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return null;
    }

    final View a(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        if (E != null)
        {
            E.l();
        }
        return b(layoutinflater, viewgroup);
    }

    public final transient String a(int i1, Object aobj[])
    {
        return o().getString(i1, aobj);
    }

    public void a(int i1, int j1, Intent intent)
    {
    }

    final void a(int i1, Fragment fragment)
    {
        o = i1;
        if (fragment != null)
        {
            q = (new StringBuilder()).append(fragment.q).append(":").append(o).toString();
            return;
        } else
        {
            q = (new StringBuilder("android:fragment:")).append(o).toString();
            return;
        }
    }

    public void a(Context context)
    {
        P = true;
    }

    public final void a(Intent intent)
    {
        if (D == null)
        {
            throw new IllegalStateException((new StringBuilder("Fragment ")).append(this).append(" not attached to FragmentHost").toString());
        } else
        {
            D.a(this, intent, -1);
            return;
        }
    }

    public final void a(Intent intent, int i1)
    {
        if (D == null)
        {
            throw new IllegalStateException((new StringBuilder("Fragment ")).append(this).append(" not attached to FragmentHost").toString());
        } else
        {
            D.a(this, intent, i1);
            return;
        }
    }

    final void a(Configuration configuration)
    {
        onConfigurationChanged(configuration);
        if (E != null)
        {
            E.a(configuration);
        }
    }

    public void a(Bundle bundle)
    {
        P = true;
    }

    public final void a(Fragment fragment)
    {
        s = fragment;
        u = 0;
    }

    public void a(View view, Bundle bundle)
    {
    }

    public final void a(String s1, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        printwriter.print(s1);
        printwriter.print("mFragmentId=#");
        printwriter.print(Integer.toHexString(G));
        printwriter.print(" mContainerId=#");
        printwriter.print(Integer.toHexString(H));
        printwriter.print(" mTag=");
        printwriter.println(I);
        printwriter.print(s1);
        printwriter.print("mState=");
        printwriter.print(j);
        printwriter.print(" mIndex=");
        printwriter.print(o);
        printwriter.print(" mWho=");
        printwriter.print(q);
        printwriter.print(" mBackStackNesting=");
        printwriter.println(B);
        printwriter.print(s1);
        printwriter.print("mAdded=");
        printwriter.print(v);
        printwriter.print(" mRemoving=");
        printwriter.print(w);
        printwriter.print(" mResumed=");
        printwriter.print(x);
        printwriter.print(" mFromLayout=");
        printwriter.print(y);
        printwriter.print(" mInLayout=");
        printwriter.println(z);
        printwriter.print(s1);
        printwriter.print("mHidden=");
        printwriter.print(J);
        printwriter.print(" mDetached=");
        printwriter.print(K);
        printwriter.print(" mMenuVisible=");
        printwriter.print(O);
        printwriter.print(" mHasMenu=");
        printwriter.println(N);
        printwriter.print(s1);
        printwriter.print("mRetainInstance=");
        printwriter.print(L);
        printwriter.print(" mRetaining=");
        printwriter.print(M);
        printwriter.print(" mUserVisibleHint=");
        printwriter.println(V);
        if (C != null)
        {
            printwriter.print(s1);
            printwriter.print("mFragmentManager=");
            printwriter.println(C);
        }
        if (D != null)
        {
            printwriter.print(s1);
            printwriter.print("mHost=");
            printwriter.println(D);
        }
        if (F != null)
        {
            printwriter.print(s1);
            printwriter.print("mParentFragment=");
            printwriter.println(F);
        }
        if (r != null)
        {
            printwriter.print(s1);
            printwriter.print("mArguments=");
            printwriter.println(r);
        }
        if (m != null)
        {
            printwriter.print(s1);
            printwriter.print("mSavedFragmentState=");
            printwriter.println(m);
        }
        if (n != null)
        {
            printwriter.print(s1);
            printwriter.print("mSavedViewState=");
            printwriter.println(n);
        }
        if (s != null)
        {
            printwriter.print(s1);
            printwriter.print("mTarget=");
            printwriter.print(s);
            printwriter.print(" mTargetRequestCode=");
            printwriter.println(u);
        }
        if (Q != 0)
        {
            printwriter.print(s1);
            printwriter.print("mNextAnim=");
            printwriter.println(Q);
        }
        if (R != null)
        {
            printwriter.print(s1);
            printwriter.print("mContainer=");
            printwriter.println(R);
        }
        if (S != null)
        {
            printwriter.print(s1);
            printwriter.print("mView=");
            printwriter.println(S);
        }
        if (T != null)
        {
            printwriter.print(s1);
            printwriter.print("mInnerView=");
            printwriter.println(S);
        }
        if (k != null)
        {
            printwriter.print(s1);
            printwriter.print("mAnimatingAway=");
            printwriter.println(k);
            printwriter.print(s1);
            printwriter.print("mStateAfterAnimating=");
            printwriter.println(l);
        }
        if (W != null)
        {
            printwriter.print(s1);
            printwriter.println("Loader Manager:");
            W.a((new StringBuilder()).append(s1).append("  ").toString(), filedescriptor, printwriter, as);
        }
        if (E != null)
        {
            printwriter.print(s1);
            printwriter.println((new StringBuilder("Child ")).append(E).append(":").toString());
            E.a((new StringBuilder()).append(s1).append("  ").toString(), filedescriptor, printwriter, as);
        }
    }

    final boolean a(Menu menu)
    {
        boolean flag = J;
        boolean flag1 = false;
        if (!flag)
        {
            boolean flag2 = N;
            flag1 = false;
            if (flag2)
            {
                boolean flag3 = O;
                flag1 = false;
                if (flag3)
                {
                    flag1 = true;
                }
            }
            if (E != null)
            {
                flag1 |= E.a(menu);
            }
        }
        return flag1;
    }

    final boolean a(Menu menu, MenuInflater menuinflater)
    {
        boolean flag = J;
        boolean flag1 = false;
        if (!flag)
        {
            boolean flag2 = N;
            flag1 = false;
            if (flag2)
            {
                boolean flag3 = O;
                flag1 = false;
                if (flag3)
                {
                    flag1 = true;
                }
            }
            if (E != null)
            {
                flag1 |= E.a(menu, menuinflater);
            }
        }
        return flag1;
    }

    final boolean a(MenuItem menuitem)
    {
        if (!J)
        {
            if (N)
            {
                boolean _tmp = O;
            }
            if (E != null && E.a(menuitem))
            {
                return true;
            }
        }
        return false;
    }

    public LayoutInflater b(Bundle bundle)
    {
        if (b == null)
        {
            b = new e(D.e(), this);
        }
        return b;
    }

    public final CharSequence b(int i1)
    {
        return o().getText(i1);
    }

    final void b(Menu menu)
    {
        if (!J)
        {
            if (N)
            {
                boolean _tmp = O;
            }
            if (E != null)
            {
                E.b(menu);
            }
        }
    }

    public final void b(boolean flag)
    {
        if (!V && flag && j < 4)
        {
            C.a(this);
        }
        V = flag;
        boolean flag1;
        if (!flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        U = flag1;
    }

    final boolean b(MenuItem menuitem)
    {
        return !J && E != null && E.b(menuitem);
    }

    public final String c(int i1)
    {
        return o().getString(i1);
    }

    public final void c_(boolean flag)
    {
        if (O != flag)
        {
            O = flag;
            if (N && s() && !W())
            {
                D.j();
            }
        }
    }

    public final int d(int i1)
    {
        if (E != null)
        {
            p = 1 + E.c(i1);
        } else
        {
            p = i1 + 1;
        }
        return p;
    }

    public void d(Bundle bundle)
    {
        P = true;
    }

    public final Fragment e(int i1)
    {
        if (p == i1)
        {
            return this;
        }
        if (E != null)
        {
            return E.d(i1);
        } else
        {
            return null;
        }
    }

    public void e(Bundle bundle)
    {
    }

    public final boolean equals(Object obj)
    {
        return super.equals(obj);
    }

    final void f(Bundle bundle)
    {
        if (n != null)
        {
            T.restoreHierarchyState(n);
            n = null;
        }
        P = false;
        h(bundle);
        if (!P)
        {
            throw new cu((new StringBuilder("Fragment ")).append(this).append(" did not call through to super.onViewStateRestored()").toString());
        } else
        {
            return;
        }
    }

    public final void g(Bundle bundle)
    {
        if (o >= 0)
        {
            throw new IllegalStateException("Fragment already active");
        } else
        {
            r = bundle;
            (new StringBuilder()).append(getClass().getName()).append(".setArguments()");
            com.facebook.e.b.a.a.b(bundle);
            return;
        }
    }

    public void h(Bundle bundle)
    {
        P = true;
    }

    public final int hashCode()
    {
        return super.hashCode();
    }

    final void i(Bundle bundle)
    {
        if (E != null)
        {
            E.l();
        }
        P = false;
        c(bundle);
        if (!P)
        {
            throw new cu((new StringBuilder("Fragment ")).append(this).append(" did not call through to super.onCreate()").toString());
        }
        if (E == null)
        {
            Y();
        }
        if (bundle != null)
        {
            android.os.Parcelable parcelable = bundle.getParcelable("android:support:fragments");
            if (parcelable != null)
            {
                E.a(parcelable, null);
            }
        }
        E.m();
    }

    public final Bundle j()
    {
        return r;
    }

    final void j(Bundle bundle)
    {
        if (E != null)
        {
            E.l();
        }
        P = false;
        l(bundle);
        if (!P)
        {
            throw new cu((new StringBuilder("Fragment ")).append(this).append(" did not call through to super.onActivityCreated()").toString());
        }
        if (E != null)
        {
            E.n();
        }
    }

    public final Fragment k()
    {
        return s;
    }

    final void k(Bundle bundle)
    {
        e(bundle);
        if (E != null)
        {
            android.os.Parcelable parcelable = E.k();
            if (parcelable != null)
            {
                bundle.putParcelable("android:support:fragments", parcelable);
            }
        }
        (new StringBuilder()).append(getClass().getName()).append(".onSaveInstanceState()");
        com.facebook.e.b.a.a.b(bundle);
    }

    public void k_()
    {
        P = true;
        if (!X)
        {
            X = true;
            if (!Y)
            {
                Y = true;
                W = D.a(q, X, false);
            }
            if (W != null)
            {
                W.b();
            }
        }
    }

    public final k l()
    {
        Context context = n();
        if (context != null && !(context instanceof k))
        {
            if (Z != null)
            {
                return Z;
            } else
            {
                throw new IllegalStateException("Fragment is not hosted in an activity");
            }
        } else
        {
            return (k)context;
        }
    }

    public void l_()
    {
        P = true;
    }

    public final r m()
    {
        return D;
    }

    public void m_()
    {
        P = true;
    }

    public final Context n()
    {
        if (D == null)
        {
            return null;
        } else
        {
            return D.a();
        }
    }

    public final Resources o()
    {
        if (D == null)
        {
            throw new IllegalStateException((new StringBuilder("Fragment ")).append(this).append(" not attached to FragmentHost").toString());
        } else
        {
            return D.d();
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        P = true;
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        m().a(contextmenu, view, contextmenuinfo);
    }

    public void onLowMemory()
    {
        P = true;
    }

    public final s p()
    {
        return C;
    }

    public final s q()
    {
        if (E != null) goto _L2; else goto _L1
_L1:
        Y();
        if (j < 5) goto _L4; else goto _L3
_L3:
        E.p();
_L2:
        return E;
_L4:
        if (j >= 4)
        {
            E.o();
        } else
        if (j >= 2)
        {
            E.n();
        } else
        if (j > 0)
        {
            E.m();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    final boolean q_()
    {
        return B > 0;
    }

    public final Fragment r()
    {
        return F;
    }

    public void r_()
    {
        P = true;
    }

    public final boolean s()
    {
        return D != null && v;
    }

    public final boolean t()
    {
        return K;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(128);
        android.support.v4.c.a.a(this, stringbuilder);
        if (o >= 0)
        {
            stringbuilder.append(" #");
            stringbuilder.append(o);
        }
        if (G != 0)
        {
            stringbuilder.append(" id=0x");
            stringbuilder.append(Integer.toHexString(G));
        }
        if (I != null)
        {
            stringbuilder.append(" ");
            stringbuilder.append(I);
        }
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    public final boolean u()
    {
        return x;
    }

    public final boolean v()
    {
        return s() && !W() && S != null && S.getWindowToken() != null && S.getVisibility() == 0;
    }

    public final void x()
    {
        if (F != null)
        {
            throw new IllegalStateException("Can't retain fragements that are nested in other fragments");
        } else
        {
            L = true;
            return;
        }
    }

    public final boolean y()
    {
        return V;
    }

    public final an z()
    {
        if (W != null)
        {
            return W;
        }
        if (D == null)
        {
            throw new IllegalStateException((new StringBuilder("Fragment ")).append(this).append(" not attached to FragmentHost").toString());
        } else
        {
            Y = true;
            W = D.a(q, X, true);
            return W;
        }
    }

}
