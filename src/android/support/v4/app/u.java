// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.c.a;
import android.support.v4.c.b;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

// Referenced classes of package android.support.v4.app:
//            s, v, t, Fragment, 
//            r, b, ap, FragmentManagerState, 
//            FragmentState, BackStackState, cu, ar, 
//            q, z, y, x, 
//            w, aa, ag

final class u extends s
{

    static final Interpolator A = new DecelerateInterpolator(1.5F);
    static final Interpolator B = new AccelerateInterpolator(2.5F);
    static final Interpolator C = new AccelerateInterpolator(1.5F);
    static boolean a = false;
    static final boolean b;
    static final Interpolator z = new DecelerateInterpolator(2.5F);
    ArrayList c;
    Runnable d[];
    boolean e;
    ArrayList f;
    ArrayList g;
    ArrayList h;
    ArrayList i;
    ArrayList j;
    ArrayList k;
    ArrayList l;
    ArrayList m;
    int n;
    r o;
    q p;
    Fragment q;
    boolean r;
    boolean s;
    boolean t;
    String u;
    boolean v;
    Bundle w;
    SparseArray x;
    Runnable y;

    u()
    {
        n = 0;
        w = null;
        x = null;
        y = new v(this);
    }

    private void A()
    {
        if (m != null)
        {
            for (int i1 = 0; i1 < m.size(); i1++)
            {
                ((t)m.get(i1)).a();
            }

        }
    }

    private static int a(int i1, boolean flag)
    {
        switch (i1)
        {
        default:
            return -1;

        case 4097: 
            return !flag ? 2 : 1;

        case 8194: 
            return !flag ? 4 : 3;

        case 4099: 
            break;
        }
        return !flag ? 6 : 5;
    }

    private Fragment a(Bundle bundle, String s1)
    {
        int i1 = bundle.getInt(s1, -1);
        Fragment fragment;
        if (i1 == -1)
        {
            fragment = null;
        } else
        {
            if (i1 >= f.size())
            {
                a(((RuntimeException) (new IllegalStateException((new StringBuilder("Fragement no longer exists for key ")).append(s1).append(": index ").append(i1).toString()))));
            }
            fragment = (Fragment)f.get(i1);
            if (fragment == null)
            {
                a(((RuntimeException) (new IllegalStateException((new StringBuilder("Fragement no longer exists for key ")).append(s1).append(": index ").append(i1).toString()))));
                return fragment;
            }
        }
        return fragment;
    }

    private static Animation a(float f1, float f2)
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(f1, f2);
        alphaanimation.setInterpolator(A);
        alphaanimation.setDuration(220L);
        return alphaanimation;
    }

    private static Animation a(float f1, float f2, float f3, float f4)
    {
        AnimationSet animationset = new AnimationSet(false);
        ScaleAnimation scaleanimation = new ScaleAnimation(f1, f2, f1, f2, 1, 0.5F, 1, 0.5F);
        scaleanimation.setInterpolator(z);
        scaleanimation.setDuration(220L);
        animationset.addAnimation(scaleanimation);
        AlphaAnimation alphaanimation = new AlphaAnimation(f3, f4);
        alphaanimation.setInterpolator(A);
        alphaanimation.setDuration(220L);
        animationset.addAnimation(alphaanimation);
        return animationset;
    }

    private Animation a(Fragment fragment, int i1, boolean flag, int j1)
    {
        int _tmp = fragment.Q;
        Fragment.D();
        if (fragment.Q != 0)
        {
            Animation animation = AnimationUtils.loadAnimation(o.a(), fragment.Q);
            if (animation != null)
            {
                return animation;
            }
        }
        if (i1 == 0)
        {
            return null;
        }
        int k1 = a(i1, flag);
        if (k1 < 0)
        {
            return null;
        }
        switch (k1)
        {
        default:
            if (j1 == 0 && o.c() != null)
            {
                j1 = o.c().getAttributes().windowAnimations;
            }
            if (j1 == 0)
            {
                return null;
            } else
            {
                return null;
            }

        case 1: // '\001'
            o.a();
            return a(1.125F, 1.0F, 0.0F, 1.0F);

        case 2: // '\002'
            o.a();
            return a(1.0F, 0.975F, 1.0F, 0.0F);

        case 3: // '\003'
            o.a();
            return a(0.975F, 1.0F, 0.0F, 1.0F);

        case 4: // '\004'
            o.a();
            return a(1.0F, 1.075F, 1.0F, 0.0F);

        case 5: // '\005'
            o.a();
            return a(0.0F, 1.0F);

        case 6: // '\006'
            o.a();
            return a(1.0F, 0.0F);
        }
    }

    private void a(int i1, android.support.v4.app.b b1)
    {
        this;
        JVM INSTR monitorenter ;
        int j1;
        if (k == null)
        {
            k = new ArrayList();
        }
        j1 = k.size();
        if (i1 >= j1) goto _L2; else goto _L1
_L1:
        if (a)
        {
            (new StringBuilder("Setting back stack index ")).append(i1).append(" to ").append(b1);
        }
        k.set(i1, b1);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (j1 >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        k.add(null);
        if (l == null)
        {
            l = new ArrayList();
        }
        if (!a);
        l.add(Integer.valueOf(j1));
        j1++;
        if (true) goto _L2; else goto _L3
_L3:
        if (a)
        {
            (new StringBuilder("Adding back stack index ")).append(i1).append(" with ").append(b1);
        }
        k.add(b1);
          goto _L4
        Exception exception;
        exception;
        throw exception;
    }

    private void a(Bundle bundle, String s1, Fragment fragment)
    {
        if (fragment.o < 0)
        {
            a(((RuntimeException) (new IllegalStateException((new StringBuilder("Fragment ")).append(fragment).append(" is not currently in the FragmentManager").toString()))));
        }
        bundle.putInt(s1, fragment.o);
    }

    private void a(RuntimeException runtimeexception)
    {
        Log.e("FragmentManager", runtimeexception.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printwriter = new PrintWriter(new b("FragmentManager"));
        if (o != null)
        {
            try
            {
                o.a("  ", printwriter, new String[0]);
            }
            catch (Exception exception1)
            {
                Log.e("FragmentManager", "Failed dumping state", exception1);
            }
        } else
        {
            try
            {
                a("  ", ((FileDescriptor) (null)), printwriter, new String[0]);
            }
            catch (Exception exception)
            {
                Log.e("FragmentManager", "Failed dumping state", exception);
            }
        }
        throw runtimeexception;
    }

    private static String c(Fragment fragment)
    {
        String s1;
        try
        {
            s1 = fragment.o().getResourceName(fragment.H);
        }
        catch (android.content.res.Resources.NotFoundException notfoundexception)
        {
            return "not-found";
        }
        return s1;
    }

    private void d(Fragment fragment)
    {
        if (fragment.o < 0)
        {
            if (h == null || h.size() <= 0)
            {
                if (f == null)
                {
                    f = new ArrayList();
                }
                fragment.a(f.size(), q);
                f.add(fragment);
            } else
            {
                fragment.a(((Integer)h.remove(-1 + h.size())).intValue(), q);
                f.set(fragment.o, fragment);
            }
            if (a)
            {
                (new StringBuilder("Allocated fragment index ")).append(fragment);
                return;
            }
        }
    }

    private void e(Fragment fragment)
    {
        if (fragment.o < 0)
        {
            return;
        }
        if (a)
        {
            (new StringBuilder("Freeing fragment index ")).append(fragment);
        }
        f.set(fragment.o, null);
        fragment.p = -1;
        if (h == null)
        {
            h = new ArrayList();
        }
        h.add(Integer.valueOf(fragment.o));
        o.a(fragment.q);
        fragment.I();
    }

    public static int f(int i1)
    {
        switch (i1)
        {
        default:
            return 0;

        case 4097: 
            return 8194;

        case 8194: 
            return 4097;

        case 4099: 
            return 4099;
        }
    }

    private void f(Fragment fragment)
    {
        if (fragment.T != null)
        {
            if (x == null)
            {
                x = new SparseArray();
            } else
            {
                x.clear();
            }
            fragment.T.saveHierarchyState(x);
            if (x.size() > 0)
            {
                fragment.n = x;
                x = null;
                return;
            }
        }
    }

    private Bundle g(Fragment fragment)
    {
        if (w == null)
        {
            w = new Bundle();
        }
        fragment.k(w);
        Bundle bundle;
        if (!w.isEmpty())
        {
            bundle = w;
            w = null;
        } else
        {
            bundle = null;
        }
        if (fragment.S != null)
        {
            f(fragment);
        }
        if (fragment.n != null)
        {
            if (bundle == null)
            {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", fragment.n);
        }
        if (!fragment.V)
        {
            if (bundle == null)
            {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", fragment.V);
        }
        return bundle;
    }

    private void g(int i1)
    {
        a(i1, 0, 0, false);
    }

    private void z()
    {
        if (s)
        {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (u != null)
        {
            throw new IllegalStateException((new StringBuilder("Can not perform this action inside of ")).append(u).toString());
        } else
        {
            return;
        }
    }

    public final int a(android.support.v4.app.b b1)
    {
        this;
        JVM INSTR monitorenter ;
        int i1;
        if (l != null && l.size() > 0)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        if (k == null)
        {
            k = new ArrayList();
        }
        i1 = k.size();
        if (a)
        {
            (new StringBuilder("Setting back stack index ")).append(i1).append(" to ").append(b1);
        }
        k.add(b1);
        this;
        JVM INSTR monitorexit ;
        return i1;
        int j1;
        j1 = ((Integer)l.remove(-1 + l.size())).intValue();
        if (a)
        {
            (new StringBuilder("Adding back stack index ")).append(j1).append(" with ").append(b1);
        }
        k.set(j1, b1);
        this;
        JVM INSTR monitorexit ;
        return j1;
        Exception exception;
        exception;
        throw exception;
    }

    public final Fragment a(int i1)
    {
        if (g == null) goto _L2; else goto _L1
_L1:
        int k1 = -1 + g.size();
_L8:
        if (k1 < 0) goto _L2; else goto _L3
_L3:
        Fragment fragment = (Fragment)g.get(k1);
        if (fragment == null || fragment.G != i1) goto _L5; else goto _L4
_L4:
        return fragment;
_L5:
        k1--;
        continue; /* Loop/switch isn't completed */
_L2:
label0:
        {
            if (f == null)
            {
                break label0;
            }
            int j1 = -1 + f.size();
            do
            {
                if (j1 < 0)
                {
                    break label0;
                }
                fragment = (Fragment)f.get(j1);
                if (fragment != null && fragment.G == i1)
                {
                    break;
                }
                j1--;
            } while (true);
        }
        if (true) goto _L4; else goto _L6
_L6:
        return null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public final Fragment a(String s1)
    {
        if (g == null || s1 == null) goto _L2; else goto _L1
_L1:
        int j1 = -1 + g.size();
_L8:
        if (j1 < 0) goto _L2; else goto _L3
_L3:
        Fragment fragment = (Fragment)g.get(j1);
        if (fragment == null || !s1.equals(fragment.I)) goto _L5; else goto _L4
_L4:
        return fragment;
_L5:
        j1--;
        continue; /* Loop/switch isn't completed */
_L2:
label0:
        {
            if (f == null || s1 == null)
            {
                break label0;
            }
            int i1 = -1 + f.size();
            do
            {
                if (i1 < 0)
                {
                    break label0;
                }
                fragment = (Fragment)f.get(i1);
                if (fragment != null && s1.equals(fragment.I))
                {
                    break;
                }
                i1--;
            } while (true);
        }
        if (true) goto _L4; else goto _L6
_L6:
        return null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public final ag a()
    {
        return new android.support.v4.app.b(this);
    }

    final void a(int i1, int j1, int k1, boolean flag)
    {
        if (o == null && i1 != 0)
        {
            throw new IllegalStateException("No activity");
        }
        if (flag || n != i1) goto _L2; else goto _L1
_L1:
        return;
_L2:
        n = i1;
        if (f == null) goto _L1; else goto _L3
_L3:
        int l1;
        boolean flag1;
        l1 = 0;
        flag1 = false;
_L5:
        boolean flag2;
        if (l1 >= f.size())
        {
            break; /* Loop/switch isn't completed */
        }
        Fragment fragment = (Fragment)f.get(l1);
        if (fragment == null)
        {
            break MISSING_BLOCK_LABEL_170;
        }
        a(fragment, i1, j1, k1, false);
        if (fragment.W == null)
        {
            break MISSING_BLOCK_LABEL_170;
        }
        flag2 = flag1 | fragment.W.a();
_L6:
        l1++;
        flag1 = flag2;
        if (true) goto _L5; else goto _L4
_L4:
        if (!flag1)
        {
            h();
        }
        if (r && o != null && n == 5)
        {
            o.j();
            r = false;
            return;
        }
          goto _L1
        flag2 = flag1;
          goto _L6
    }

    public final void a(Configuration configuration)
    {
        if (g != null)
        {
            for (int i1 = 0; i1 < g.size(); i1++)
            {
                Fragment fragment = (Fragment)g.get(i1);
                if (fragment != null)
                {
                    fragment.a(configuration);
                }
            }

        }
    }

    final void a(Parcelable parcelable, ArrayList arraylist)
    {
        if (parcelable != null) goto _L2; else goto _L1
_L1:
        FragmentManagerState fragmentmanagerstate;
        return;
_L2:
        if ((fragmentmanagerstate = (FragmentManagerState)parcelable).a != null)
        {
            if (arraylist != null)
            {
                for (int i2 = 0; i2 < arraylist.size(); i2++)
                {
                    Fragment fragment3 = (Fragment)arraylist.get(i2);
                    if (a)
                    {
                        (new StringBuilder("restoreAllState: re-attaching retained ")).append(fragment3);
                    }
                    FragmentState fragmentstate1 = fragmentmanagerstate.a[fragment3.o];
                    fragmentstate1.l = fragment3;
                    fragment3.n = null;
                    fragment3.B = 0;
                    fragment3.z = false;
                    fragment3.v = false;
                    fragment3.s = null;
                    if (fragmentstate1.k != null)
                    {
                        fragmentstate1.k.setClassLoader(o.a().getClassLoader());
                        fragment3.n = fragmentstate1.k.getSparseParcelableArray("android:view_state");
                    }
                }

            }
            f = new ArrayList(fragmentmanagerstate.a.length);
            if (h != null)
            {
                h.clear();
            }
            int i1 = 0;
            while (i1 < fragmentmanagerstate.a.length) 
            {
                FragmentState fragmentstate = fragmentmanagerstate.a[i1];
                if (fragmentstate != null)
                {
                    Fragment fragment2 = fragmentstate.a(o, q);
                    if (a)
                    {
                        (new StringBuilder("restoreAllState: active #")).append(i1).append(": ").append(fragment2);
                    }
                    f.add(fragment2);
                    fragmentstate.l = null;
                } else
                {
                    f.add(null);
                    if (h == null)
                    {
                        h = new ArrayList();
                    }
                    if (!a);
                    h.add(Integer.valueOf(i1));
                }
                i1++;
            }
            if (arraylist != null)
            {
                int l1 = 0;
                while (l1 < arraylist.size()) 
                {
                    Fragment fragment1 = (Fragment)arraylist.get(l1);
                    if (fragment1.t >= 0)
                    {
                        if (fragment1.t < f.size())
                        {
                            fragment1.s = (Fragment)f.get(fragment1.t);
                        } else
                        {
                            (new StringBuilder("Re-attaching retained fragment ")).append(fragment1).append(" target no longer exists: ").append(fragment1.t);
                            fragment1.s = null;
                        }
                    }
                    l1++;
                }
            }
            if (fragmentmanagerstate.b != null)
            {
                g = new ArrayList(fragmentmanagerstate.b.length);
                for (int k1 = 0; k1 < fragmentmanagerstate.b.length; k1++)
                {
                    Fragment fragment = (Fragment)f.get(fragmentmanagerstate.b[k1]);
                    if (fragment == null)
                    {
                        a(((RuntimeException) (new IllegalStateException((new StringBuilder("No instantiated fragment for index #")).append(fragmentmanagerstate.b[k1]).toString()))));
                    }
                    fragment.v = true;
                    if (a)
                    {
                        (new StringBuilder("restoreAllState: added #")).append(k1).append(": ").append(fragment);
                    }
                    if (g.contains(fragment))
                    {
                        throw new IllegalStateException("Already added!");
                    }
                    g.add(fragment);
                }

            } else
            {
                g = null;
            }
            if (fragmentmanagerstate.c != null)
            {
                i = new ArrayList(fragmentmanagerstate.c.length);
                int j1 = 0;
                while (j1 < fragmentmanagerstate.c.length) 
                {
                    android.support.v4.app.b b1 = fragmentmanagerstate.c[j1].a(this);
                    if (a)
                    {
                        (new StringBuilder("restoreAllState: back stack #")).append(j1).append(" (index ").append(b1.o).append("): ").append(b1);
                        b1.a("  ", new PrintWriter(new b("FragmentManager")), false);
                    }
                    i.add(b1);
                    if (b1.o >= 0)
                    {
                        a(b1.o, b1);
                    }
                    j1++;
                }
            } else
            {
                i = null;
                return;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public final void a(Fragment fragment)
    {
label0:
        {
            if (fragment.U)
            {
                if (!e)
                {
                    break label0;
                }
                v = true;
            }
            return;
        }
        fragment.U = false;
        a(fragment, n, 0, 0, false);
    }

    public final void a(Fragment fragment, int i1, int j1)
    {
        if (a)
        {
            (new StringBuilder("remove: ")).append(fragment).append(" nesting=").append(fragment.B);
        }
        boolean flag;
        if (!fragment.q_())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!fragment.K || flag)
        {
            if (g != null)
            {
                g.remove(fragment);
            }
            if (fragment.N && fragment.O)
            {
                r = true;
            }
            fragment.v = false;
            fragment.w = true;
            int k1;
            if (flag)
            {
                k1 = 0;
            } else
            {
                k1 = 1;
            }
            a(fragment, k1, i1, j1, false);
        }
    }

    final void a(Fragment fragment, int i1, int j1, int k1, boolean flag)
    {
        if ((!fragment.v || fragment.K) && i1 > 1)
        {
            i1 = 1;
        }
        if (fragment.w && i1 > fragment.j)
        {
            i1 = fragment.j;
        }
        if (fragment.U && fragment.j < 4 && i1 > 3)
        {
            i1 = 3;
        }
        if (fragment.j >= i1) goto _L2; else goto _L1
_L1:
        if (fragment.y && !fragment.z)
        {
            return;
        }
        if (fragment.k != null)
        {
            fragment.k = null;
            a(fragment, fragment.l, 0, 0, true);
        }
        fragment.j;
        JVM INSTR tableswitch 0 4: default 148
    //                   0 154
    //                   1 573
    //                   2 849
    //                   3 849
    //                   4 879;
           goto _L3 _L4 _L5 _L6 _L6 _L7
_L3:
        fragment.j = i1;
        return;
_L4:
        if (a)
        {
            (new StringBuilder("moveto CREATED: ")).append(fragment);
        }
        if (fragment.m != null)
        {
            fragment.m.setClassLoader(o.a().getClassLoader());
            fragment.n = fragment.m.getSparseParcelableArray("android:view_state");
            fragment.s = a(fragment.m, "android:target_state");
            if (fragment.s != null)
            {
                fragment.u = fragment.m.getInt("android:target_req_state", 0);
            }
            fragment.V = fragment.m.getBoolean("android:user_visible_hint", true);
            if (!fragment.V)
            {
                fragment.U = true;
                if (i1 > 3)
                {
                    i1 = 3;
                }
            }
        }
        fragment.D = o;
        fragment.F = q;
        u u1;
        if (q != null)
        {
            u1 = q.E;
        } else
        {
            u1 = o.g();
        }
        fragment.C = u1;
        fragment.P = false;
        fragment.a(o.a());
        if (!fragment.P)
        {
            throw new cu((new StringBuilder("Fragment ")).append(fragment).append(" did not call through to super.onAttach()").toString());
        }
        if (o.a() instanceof Activity)
        {
            fragment.P = false;
            o.a();
            fragment.B();
            if (!fragment.P)
            {
                throw new cu((new StringBuilder("Fragment ")).append(fragment).append(" did not call through to super.onAttach()").toString());
            }
        }
        if (fragment.F == null)
        {
            o.a(fragment);
        } else
        {
            q;
            Fragment.C();
        }
        if (!fragment.M)
        {
            fragment.i(fragment.m);
        }
        fragment.M = false;
        if (fragment.y)
        {
            fragment.S = fragment.a(fragment.b(fragment.m), null, fragment.m);
            Animation animation1;
            if (fragment.S != null)
            {
                fragment.T = fragment.S;
                fragment.S = android.support.v4.app.ar.a(fragment.S);
                if (fragment.J)
                {
                    fragment.S.setVisibility(8);
                }
                fragment.a(fragment.S, fragment.m);
            } else
            {
                fragment.T = null;
            }
        }
_L5:
        if (i1 > 1)
        {
            if (a)
            {
                (new StringBuilder("moveto ACTIVITY_CREATED: ")).append(fragment);
            }
            if (!fragment.y)
            {
                View view;
                Animation animation;
                ViewGroup viewgroup;
                if (fragment.H != 0)
                {
                    viewgroup = (ViewGroup)p.a(fragment.H);
                    if (viewgroup == null && !fragment.A)
                    {
                        a(((RuntimeException) (new IllegalArgumentException((new StringBuilder("No view found for id 0x")).append(Integer.toHexString(fragment.H)).append(" (").append(c(fragment)).append(") for fragment ").append(fragment).toString()))));
                    }
                } else
                {
                    viewgroup = null;
                }
                fragment.R = viewgroup;
                fragment.S = fragment.a(fragment.b(fragment.m), viewgroup, fragment.m);
                if (fragment.S != null)
                {
                    fragment.T = fragment.S;
                    fragment.S = android.support.v4.app.ar.a(fragment.S);
                    if (viewgroup != null)
                    {
                        animation1 = a(fragment, j1, true, k1);
                        if (animation1 != null)
                        {
                            fragment.S.startAnimation(animation1);
                        }
                        viewgroup.addView(fragment.S);
                    }
                    if (fragment.J)
                    {
                        fragment.S.setVisibility(8);
                    }
                    fragment.a(fragment.S, fragment.m);
                } else
                {
                    fragment.T = null;
                }
            }
            fragment.j(fragment.m);
            if (fragment.S != null)
            {
                fragment.f(fragment.m);
            }
            fragment.m = null;
        }
_L6:
        if (i1 > 3)
        {
            if (a)
            {
                (new StringBuilder("moveto STARTED: ")).append(fragment);
            }
            fragment.K();
        }
_L7:
        if (i1 > 4)
        {
            if (a)
            {
                (new StringBuilder("moveto RESUMED: ")).append(fragment);
            }
            fragment.x = true;
            fragment.L();
            fragment.m = null;
            fragment.n = null;
        }
          goto _L8
_L2:
        if (fragment.j <= i1) goto _L8; else goto _L9
_L9:
        fragment.j;
        JVM INSTR tableswitch 1 5: default 1000
    //                   1 1003
    //                   2 1149
    //                   3 1119
    //                   4 1089
    //                   5 1054;
           goto _L10 _L11 _L12 _L13 _L14 _L15
_L10:
        break; /* Loop/switch isn't completed */
_L11:
        if (i1 <= 0)
        {
            if (t && fragment.k != null)
            {
                view = fragment.k;
                fragment.k = null;
                view.clearAnimation();
            }
            if (fragment.k != null)
            {
                fragment.l = i1;
                i1 = 1;
            } else
            {
                if (a)
                {
                    (new StringBuilder("movefrom CREATED: ")).append(fragment);
                }
                if (!fragment.M)
                {
                    fragment.U();
                }
                fragment.P = false;
                fragment.r_();
                if (!fragment.P)
                {
                    throw new cu((new StringBuilder("Fragment ")).append(fragment).append(" did not call through to super.onDetach()").toString());
                }
                if (!flag)
                {
                    if (!fragment.M)
                    {
                        e(fragment);
                    } else
                    {
                        fragment.D = null;
                        fragment.C = null;
                    }
                }
            }
        }
        break; /* Loop/switch isn't completed */
_L15:
        if (i1 < 5)
        {
            if (a)
            {
                (new StringBuilder("movefrom RESUMED: ")).append(fragment);
            }
            fragment.Q();
            fragment.x = false;
        }
_L14:
        if (i1 < 4)
        {
            if (a)
            {
                (new StringBuilder("movefrom STARTED: ")).append(fragment);
            }
            fragment.R();
        }
_L13:
        if (i1 < 3)
        {
            if (a)
            {
                (new StringBuilder("movefrom STOPPED: ")).append(fragment);
            }
            fragment.S();
        }
_L12:
        if (i1 < 2)
        {
            if (a)
            {
                (new StringBuilder("movefrom ACTIVITY_CREATED: ")).append(fragment);
            }
            if (fragment.S != null && !o.f() && fragment.n == null)
            {
                f(fragment);
            }
            fragment.T();
            if (fragment.S != null && fragment.R != null)
            {
                if (n > 0 && !t)
                {
                    animation = a(fragment, j1, false, k1);
                } else
                {
                    animation = null;
                }
                if (animation != null)
                {
                    fragment.k = fragment.S;
                    fragment.l = i1;
                    animation.setAnimationListener(new z(this, fragment));
                    fragment.S.startAnimation(animation);
                }
                fragment.R.removeView(fragment.S);
            }
            fragment.R = null;
            fragment.S = null;
            fragment.T = null;
        }
        if (true) goto _L11; else goto _L8
_L8:
        if (true) goto _L3; else goto _L16
_L16:
    }

    public final void a(Fragment fragment, boolean flag)
    {
        if (g == null)
        {
            g = new ArrayList();
        }
        if (a)
        {
            (new StringBuilder("add: ")).append(fragment);
        }
        d(fragment);
        if (!fragment.K)
        {
            if (g.contains(fragment))
            {
                throw new IllegalStateException((new StringBuilder("Fragment already added: ")).append(fragment).toString());
            }
            g.add(fragment);
            fragment.v = true;
            fragment.w = false;
            if (fragment.N && fragment.O)
            {
                r = true;
            }
            if (flag)
            {
                b(fragment);
            }
        }
    }

    public final void a(r r1, q q1, Fragment fragment)
    {
        if (o != null)
        {
            throw new IllegalStateException("Already attached");
        } else
        {
            o = r1;
            p = q1;
            q = fragment;
            return;
        }
    }

    public final void a(t t1)
    {
        if (m == null)
        {
            m = new ArrayList();
        }
        m.add(t1);
    }

    public final void a(Runnable runnable, boolean flag)
    {
        if (!flag)
        {
            z();
        }
        this;
        JVM INSTR monitorenter ;
        if (o == null)
        {
            throw new IllegalStateException("FragmentHost has been destroyed");
        }
        break MISSING_BLOCK_LABEL_33;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (c == null)
        {
            c = new ArrayList();
        }
        c.add(runnable);
        if (c.size() == 1)
        {
            o.b().removeCallbacks(y);
            o.b().post(y);
        }
        this;
        JVM INSTR monitorexit ;
    }

    public final void a(String s1, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        int i1;
        i1 = 0;
        String s2 = (new StringBuilder()).append(s1).append("    ").toString();
        if (f != null)
        {
            int k3 = f.size();
            if (k3 > 0)
            {
                printwriter.print(s1);
                printwriter.print("Active Fragments in ");
                printwriter.print(Integer.toHexString(System.identityHashCode(this)));
                printwriter.println(":");
                for (int l3 = 0; l3 < k3; l3++)
                {
                    Fragment fragment2 = (Fragment)f.get(l3);
                    printwriter.print(s1);
                    printwriter.print("  #");
                    printwriter.print(l3);
                    printwriter.print(": ");
                    printwriter.println(fragment2);
                    if (fragment2 != null)
                    {
                        fragment2.a(s2, filedescriptor, printwriter, as);
                    }
                }

            }
        }
        if (g != null)
        {
            int i3 = g.size();
            if (i3 > 0)
            {
                printwriter.print(s1);
                printwriter.println("Added Fragments:");
                for (int j3 = 0; j3 < i3; j3++)
                {
                    Fragment fragment1 = (Fragment)g.get(j3);
                    printwriter.print(s1);
                    printwriter.print("  #");
                    printwriter.print(j3);
                    printwriter.print(": ");
                    printwriter.println(fragment1.toString());
                }

            }
        }
        if (j != null)
        {
            int k2 = j.size();
            if (k2 > 0)
            {
                printwriter.print(s1);
                printwriter.println("Fragments Created Menus:");
                for (int l2 = 0; l2 < k2; l2++)
                {
                    Fragment fragment = (Fragment)j.get(l2);
                    printwriter.print(s1);
                    printwriter.print("  #");
                    printwriter.print(l2);
                    printwriter.print(": ");
                    printwriter.println(fragment.toString());
                }

            }
        }
        if (i != null)
        {
            int i2 = i.size();
            if (i2 > 0)
            {
                printwriter.print(s1);
                printwriter.println("Back Stack:");
                for (int j2 = 0; j2 < i2; j2++)
                {
                    android.support.v4.app.b b2 = (android.support.v4.app.b)i.get(j2);
                    printwriter.print(s1);
                    printwriter.print("  #");
                    printwriter.print(j2);
                    printwriter.print(": ");
                    printwriter.println(b2.toString());
                    b2.a(s2, printwriter);
                }

            }
        }
        this;
        JVM INSTR monitorenter ;
        if (k == null) goto _L2; else goto _L1
_L1:
        int k1 = k.size();
        if (k1 <= 0) goto _L2; else goto _L3
_L3:
        printwriter.print(s1);
        printwriter.println("Back Stack Indices:");
        int l1 = 0;
_L4:
        if (l1 >= k1)
        {
            break; /* Loop/switch isn't completed */
        }
        android.support.v4.app.b b1 = (android.support.v4.app.b)k.get(l1);
        printwriter.print(s1);
        printwriter.print("  #");
        printwriter.print(l1);
        printwriter.print(": ");
        printwriter.println(b1);
        l1++;
        if (true) goto _L4; else goto _L2
_L2:
        if (l != null && l.size() > 0)
        {
            printwriter.print(s1);
            printwriter.print("mAvailBackStackIndices: ");
            printwriter.println(Arrays.toString(l.toArray()));
        }
        this;
        JVM INSTR monitorexit ;
        if (c != null)
        {
            int j1 = c.size();
            if (j1 > 0)
            {
                printwriter.print(s1);
                printwriter.println("Pending Actions:");
                for (; i1 < j1; i1++)
                {
                    Runnable runnable = (Runnable)c.get(i1);
                    printwriter.print(s1);
                    printwriter.print("  #");
                    printwriter.print(i1);
                    printwriter.print(": ");
                    printwriter.println(runnable);
                }

            }
        }
        break MISSING_BLOCK_LABEL_691;
        Exception exception;
        exception;
        throw exception;
        printwriter.print(s1);
        printwriter.println("FragmentManager misc state:");
        printwriter.print(s1);
        printwriter.print("  mActivity=");
        printwriter.println(o);
        printwriter.print(s1);
        printwriter.print("  mContainer=");
        printwriter.println(p);
        if (q != null)
        {
            printwriter.print(s1);
            printwriter.print("  mParent=");
            printwriter.println(q);
        }
        printwriter.print(s1);
        printwriter.print("  mCurState=");
        printwriter.print(n);
        printwriter.print(" mStateSaved=");
        printwriter.print(s);
        printwriter.print(" mDestroyed=");
        printwriter.println(t);
        if (r)
        {
            printwriter.print(s1);
            printwriter.print("  mNeedMenuInvalidate=");
            printwriter.println(r);
        }
        if (u != null)
        {
            printwriter.print(s1);
            printwriter.print("  mNoTransactionsBecause=");
            printwriter.println(u);
        }
        if (h != null && h.size() > 0)
        {
            printwriter.print(s1);
            printwriter.print("  mAvailIndices: ");
            printwriter.println(Arrays.toString(h.toArray()));
        }
        return;
    }

    public final boolean a(Menu menu)
    {
        boolean flag;
        if (g != null)
        {
            int i1 = 0;
            flag = false;
            for (; i1 < g.size(); i1++)
            {
                Fragment fragment = (Fragment)g.get(i1);
                if (fragment != null && fragment.a(menu))
                {
                    flag = true;
                }
            }

        } else
        {
            flag = false;
        }
        return flag;
    }

    public final boolean a(Menu menu, MenuInflater menuinflater)
    {
        ArrayList arraylist = null;
        boolean flag;
        if (g != null)
        {
            int j1 = 0;
            boolean flag1;
            for (flag = false; j1 < g.size(); flag = flag1)
            {
                Fragment fragment1 = (Fragment)g.get(j1);
                if (fragment1 != null && fragment1.a(menu, menuinflater))
                {
                    flag = true;
                    if (arraylist == null)
                    {
                        arraylist = new ArrayList();
                    }
                    arraylist.add(fragment1);
                }
                flag1 = flag;
                j1++;
            }

        } else
        {
            flag = false;
        }
        ArrayList arraylist1 = j;
        int i1 = 0;
        if (arraylist1 != null)
        {
            for (; i1 < j.size(); i1++)
            {
                Fragment fragment = (Fragment)j.get(i1);
                if (arraylist == null || !arraylist.contains(fragment))
                {
                    Fragment.J();
                }
            }

        }
        j = arraylist;
        return flag;
    }

    public final boolean a(MenuItem menuitem)
    {
        ArrayList arraylist;
        boolean flag;
        arraylist = g;
        flag = false;
        if (arraylist == null) goto _L2; else goto _L1
_L1:
        int i1 = 0;
_L7:
        int j1;
        j1 = g.size();
        flag = false;
        if (i1 >= j1) goto _L2; else goto _L3
_L3:
        Fragment fragment = (Fragment)g.get(i1);
        if (fragment == null || !fragment.a(menuitem)) goto _L5; else goto _L4
_L4:
        flag = true;
_L2:
        return flag;
_L5:
        i1++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    final boolean a(String s1, int i1, int j1)
    {
        if (i != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int l2;
        if (s1 != null || i1 >= 0 || (j1 & 1) != 0) goto _L4; else goto _L3
_L3:
        if ((l2 = -1 + i.size()) < 0) goto _L1; else goto _L5
_L5:
        ((android.support.v4.app.b)i.remove(l2)).a(true);
_L8:
        A();
        return true;
_L4:
        int k1;
        int l1;
        k1 = -1;
        if (s1 == null && i1 < 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        l1 = -1 + i.size();
        do
        {
            if (l1 < 0)
            {
                break;
            }
            android.support.v4.app.b b3 = (android.support.v4.app.b)i.get(l1);
            if (s1 != null && s1.equals(b3.d()) || i1 >= 0 && i1 == b3.o)
            {
                break;
            }
            l1--;
        } while (true);
        if (l1 < 0) goto _L1; else goto _L6
_L6:
        if ((j1 & 1) != 0)
        {
            l1--;
            do
            {
                if (l1 < 0)
                {
                    break;
                }
                android.support.v4.app.b b2 = (android.support.v4.app.b)i.get(l1);
                if ((s1 == null || !s1.equals(b2.d())) && (i1 < 0 || i1 != b2.o))
                {
                    break;
                }
                l1--;
            } while (true);
        }
        k1 = l1;
        if (k1 == -1 + i.size()) goto _L1; else goto _L7
_L7:
        ArrayList arraylist = new ArrayList();
        for (int i2 = -1 + i.size(); i2 > k1; i2--)
        {
            arraylist.add(i.remove(i2));
        }

        int j2 = -1 + arraylist.size();
        int k2 = 0;
        while (k2 <= j2) 
        {
            if (a)
            {
                (new StringBuilder("Popping back stack state: ")).append(arraylist.get(k2));
            }
            android.support.v4.app.b b1 = (android.support.v4.app.b)arraylist.get(k2);
            boolean flag;
            if (k2 == j2)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            b1.a(flag);
            k2++;
        }
          goto _L8
    }

    public final void b(int i1)
    {
        if (i1 < 0)
        {
            throw new IllegalArgumentException((new StringBuilder("Bad id: ")).append(i1).toString());
        } else
        {
            a(new y(this, i1, 1), false);
            return;
        }
    }

    final void b(Fragment fragment)
    {
        a(fragment, n, 0, 0, false);
    }

    public final void b(Fragment fragment, int i1, int j1)
    {
        if (a)
        {
            (new StringBuilder("hide: ")).append(fragment);
        }
        if (!fragment.J)
        {
            fragment.J = true;
            if (fragment.S != null)
            {
                Animation animation = a(fragment, i1, false, j1);
                if (animation != null)
                {
                    fragment.S.startAnimation(animation);
                }
                fragment.S.setVisibility(8);
            }
            if (fragment.v && fragment.N && fragment.O)
            {
                r = true;
            }
            Fragment.w();
        }
    }

    final void b(android.support.v4.app.b b1)
    {
        if (i == null)
        {
            i = new ArrayList();
        }
        i.add(b1);
        A();
    }

    public final void b(Menu menu)
    {
        if (g != null)
        {
            for (int i1 = 0; i1 < g.size(); i1++)
            {
                Fragment fragment = (Fragment)g.get(i1);
                if (fragment != null)
                {
                    fragment.b(menu);
                }
            }

        }
    }

    public final void b(String s1)
    {
        a(new x(this, s1, 1), false);
    }

    public final boolean b()
    {
        return i();
    }

    public final boolean b(MenuItem menuitem)
    {
        ArrayList arraylist;
        boolean flag;
        arraylist = g;
        flag = false;
        if (arraylist == null) goto _L2; else goto _L1
_L1:
        int i1 = 0;
_L7:
        int j1;
        j1 = g.size();
        flag = false;
        if (i1 >= j1) goto _L2; else goto _L3
_L3:
        Fragment fragment = (Fragment)g.get(i1);
        if (fragment == null || !fragment.b(menuitem)) goto _L5; else goto _L4
_L4:
        flag = true;
_L2:
        return flag;
_L5:
        i1++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public final int c(int i1)
    {
        if (f != null)
        {
            Iterator iterator = f.iterator();
            while (iterator.hasNext()) 
            {
                Fragment fragment = (Fragment)iterator.next();
                if (fragment != null)
                {
                    i1 = fragment.d(i1);
                }
            }
        }
        return i1;
    }

    public final void c(Fragment fragment, int i1, int j1)
    {
        if (a)
        {
            (new StringBuilder("show: ")).append(fragment);
        }
        if (fragment.J)
        {
            fragment.J = false;
            if (fragment.S != null)
            {
                Animation animation = a(fragment, i1, true, j1);
                if (animation != null)
                {
                    fragment.S.startAnimation(animation);
                }
                fragment.S.setVisibility(0);
            }
            if (fragment.v && fragment.N && fragment.O)
            {
                r = true;
            }
            Fragment.w();
        }
    }

    public final boolean c()
    {
        return !s && u == null;
    }

    public final boolean c(String s1)
    {
        z();
        b();
        o.b();
        return a(s1, -1, 1);
    }

    public final Fragment d(int i1)
    {
        if (f == null)
        {
            return null;
        }
        for (Iterator iterator = f.iterator(); iterator.hasNext();)
        {
            Fragment fragment = (Fragment)iterator.next();
            if (fragment != null && fragment.p >= i1)
            {
                return fragment.e(i1);
            }
        }

        return null;
    }

    public final void d()
    {
        a(new w(this), false);
    }

    public final void d(Fragment fragment, int i1, int j1)
    {
        if (a)
        {
            (new StringBuilder("detach: ")).append(fragment);
        }
        if (!fragment.K)
        {
            fragment.K = true;
            if (fragment.v)
            {
                if (g != null)
                {
                    if (a)
                    {
                        (new StringBuilder("remove from detach: ")).append(fragment);
                    }
                    g.remove(fragment);
                }
                if (fragment.N && fragment.O)
                {
                    r = true;
                }
                fragment.v = false;
                a(fragment, 1, i1, j1, false);
            }
        }
    }

    public final void e(int i1)
    {
        this;
        JVM INSTR monitorenter ;
        k.set(i1, null);
        if (l == null)
        {
            l = new ArrayList();
        }
        if (!a);
        l.add(Integer.valueOf(i1));
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void e(Fragment fragment, int i1, int j1)
    {
        if (a)
        {
            (new StringBuilder("attach: ")).append(fragment);
        }
        if (fragment.K)
        {
            fragment.K = false;
            if (!fragment.v)
            {
                if (g == null)
                {
                    g = new ArrayList();
                }
                if (g.contains(fragment))
                {
                    throw new IllegalStateException((new StringBuilder("Fragment already added: ")).append(fragment).toString());
                }
                if (a)
                {
                    (new StringBuilder("add from attach: ")).append(fragment);
                }
                g.add(fragment);
                fragment.v = true;
                if (fragment.N && fragment.O)
                {
                    r = true;
                }
                a(fragment, n, i1, j1, false);
            }
        }
    }

    public final boolean e()
    {
        z();
        b();
        o.b();
        return a(((String) (null)), -1, 0);
    }

    public final boolean f()
    {
        z();
        b();
        o.b();
        return a(((String) (null)), 0, 1);
    }

    public final int g()
    {
        if (i != null)
        {
            return i.size();
        } else
        {
            return 0;
        }
    }

    final void h()
    {
        if (f != null)
        {
            int i1 = 0;
            while (i1 < f.size()) 
            {
                Fragment fragment = (Fragment)f.get(i1);
                if (fragment != null)
                {
                    a(fragment);
                }
                i1++;
            }
        }
    }

    public final boolean i()
    {
        if (e)
        {
            throw new IllegalStateException("Recursive entry to executePendingTransactions");
        }
        if (Looper.myLooper() != o.b().getLooper())
        {
            throw new IllegalStateException("Must be called from main thread of process");
        }
        boolean flag = false;
_L2:
        this;
        JVM INSTR monitorenter ;
        if (c != null && c.size() != 0)
        {
            break MISSING_BLOCK_LABEL_136;
        }
        this;
        JVM INSTR monitorexit ;
        boolean flag1;
        if (!v)
        {
            break MISSING_BLOCK_LABEL_326;
        }
        int i1 = 0;
        flag1 = false;
        for (; i1 < f.size(); i1++)
        {
            Fragment fragment = (Fragment)f.get(i1);
            if (fragment != null && fragment.W != null)
            {
                flag1 |= fragment.W.a();
            }
        }

        break; /* Loop/switch isn't completed */
        int j1;
        j1 = c.size();
        if (d == null || d.length < j1)
        {
            d = new Runnable[j1];
        }
        c.toArray(d);
        c.clear();
        o.b().removeCallbacks(y);
        this;
        JVM INSTR monitorexit ;
        e = true;
        int k1 = 0;
        do
        {
            if (k1 >= j1)
            {
                break;
            }
            Exception exception;
            try
            {
                d[k1].run();
            }
            catch (Exception exception1)
            {
                (new Handler(Looper.getMainLooper())).post(new aa(this, exception1));
                if (exception1 instanceof RuntimeException)
                {
                    throw (RuntimeException)exception1;
                } else
                {
                    throw new RuntimeException(exception1);
                }
            }
            d[k1] = null;
            k1++;
        } while (true);
        break MISSING_BLOCK_LABEL_302;
        exception;
        throw exception;
        e = false;
        flag = true;
        if (true) goto _L2; else goto _L1
_L1:
        if (!flag1)
        {
            v = false;
            h();
        }
        return flag;
    }

    final ArrayList j()
    {
        ArrayList arraylist = f;
        ArrayList arraylist1 = null;
        if (arraylist != null)
        {
            int i1 = 0;
            while (i1 < f.size()) 
            {
                Fragment fragment = (Fragment)f.get(i1);
                if (fragment == null || !fragment.L)
                {
                    continue;
                }
                if (arraylist1 == null)
                {
                    arraylist1 = new ArrayList();
                }
                arraylist1.add(fragment);
                fragment.M = true;
                int j1;
                if (fragment.s != null)
                {
                    j1 = fragment.s.o;
                } else
                {
                    j1 = -1;
                }
                fragment.t = j1;
                if (a)
                {
                    (new StringBuilder("retainNonConfig: keeping retained ")).append(fragment);
                }
                i1++;
            }
        }
        return arraylist1;
    }

    final Parcelable k()
    {
label0:
        {
            i();
            if (b)
            {
                s = true;
            }
            if (f == null || f.size() <= 0)
            {
                return null;
            }
            int i1 = f.size();
            FragmentState afragmentstate[] = new FragmentState[i1];
            int j1 = 0;
            boolean flag = false;
            while (j1 < i1) 
            {
                Fragment fragment = (Fragment)f.get(j1);
                int ai[];
                ArrayList arraylist;
                BackStackState abackstackstate[];
                FragmentManagerState fragmentmanagerstate;
                int k1;
                int l1;
                int i2;
                int j2;
                boolean flag1;
                if (fragment != null)
                {
                    if (fragment.o < 0)
                    {
                        a(new IllegalStateException((new StringBuilder("Failure saving state: active ")).append(fragment).append(" has cleared index: ").append(fragment.o).toString()));
                    }
                    FragmentState fragmentstate = new FragmentState(fragment);
                    afragmentstate[j1] = fragmentstate;
                    if (fragment.j > 0 && fragmentstate.k == null)
                    {
                        fragmentstate.k = g(fragment);
                        if (fragment.s != null)
                        {
                            if (fragment.s.o < 0)
                            {
                                a(new IllegalStateException((new StringBuilder("Failure saving state: ")).append(fragment).append(" has target not in fragment manager: ").append(fragment.s).toString()));
                            }
                            if (fragmentstate.k == null)
                            {
                                fragmentstate.k = new Bundle();
                            }
                            a(fragmentstate.k, "android:target_state", fragment.s);
                            if (fragment.u != 0)
                            {
                                fragmentstate.k.putInt("android:target_req_state", fragment.u);
                            }
                        }
                    } else
                    {
                        fragmentstate.k = fragment.m;
                    }
                    if (a)
                    {
                        (new StringBuilder("Saved state of ")).append(fragment).append(": ").append(fragmentstate.k);
                    }
                    flag1 = true;
                } else
                {
                    flag1 = flag;
                }
                j1++;
                flag = flag1;
            }
            if (!flag)
            {
                boolean _tmp = a;
                return null;
            }
            if (g != null)
            {
                i2 = g.size();
                if (i2 > 0)
                {
                    ai = new int[i2];
                    for (j2 = 0; j2 < i2; j2++)
                    {
                        ai[j2] = ((Fragment)g.get(j2)).o;
                        if (ai[j2] < 0)
                        {
                            a(new IllegalStateException((new StringBuilder("Failure saving state: active ")).append(g.get(j2)).append(" has cleared index: ").append(ai[j2]).toString()));
                        }
                        if (a)
                        {
                            (new StringBuilder("saveAllState: adding fragment #")).append(j2).append(": ").append(g.get(j2));
                        }
                    }

                    break label0;
                }
            }
            ai = null;
        }
        arraylist = i;
        abackstackstate = null;
        if (arraylist != null)
        {
            k1 = i.size();
            abackstackstate = null;
            if (k1 > 0)
            {
                abackstackstate = new BackStackState[k1];
                for (l1 = 0; l1 < k1; l1++)
                {
                    abackstackstate[l1] = new BackStackState((android.support.v4.app.b)i.get(l1));
                    if (a)
                    {
                        (new StringBuilder("saveAllState: adding back stack #")).append(l1).append(": ").append(i.get(l1));
                    }
                }

            }
        }
        fragmentmanagerstate = new FragmentManagerState();
        fragmentmanagerstate.a = afragmentstate;
        fragmentmanagerstate.b = ai;
        fragmentmanagerstate.c = abackstackstate;
        return fragmentmanagerstate;
    }

    public final void l()
    {
        s = false;
    }

    public final void m()
    {
        s = false;
        g(1);
    }

    public final void n()
    {
        s = false;
        g(2);
    }

    public final void o()
    {
        s = false;
        g(4);
    }

    public final void p()
    {
        s = false;
        g(5);
    }

    public final void q()
    {
        g(4);
    }

    public final void r()
    {
        s = true;
        g(3);
    }

    public final void s()
    {
        g(2);
    }

    public final void t()
    {
        g(1);
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(128);
        stringbuilder.append("FragmentManager{");
        stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringbuilder.append(" in ");
        if (q != null)
        {
            android.support.v4.c.a.a(q, stringbuilder);
        } else
        {
            android.support.v4.c.a.a(o, stringbuilder);
        }
        stringbuilder.append("}}");
        return stringbuilder.toString();
    }

    public final void u()
    {
        t = true;
        i();
        g(0);
        o = null;
        p = null;
        q = null;
    }

    public final void v()
    {
        if (g != null)
        {
            for (int i1 = 0; i1 < g.size(); i1++)
            {
                Fragment fragment = (Fragment)g.get(i1);
                if (fragment != null)
                {
                    fragment.M();
                }
            }

        }
    }

    public final View w()
    {
        if (g != null)
        {
            for (int i1 = 0; i1 < g.size(); i1++)
            {
                Fragment fragment = (Fragment)g.get(i1);
                if (fragment == null)
                {
                    continue;
                }
                View view = fragment.O();
                if (view != null)
                {
                    return view;
                }
            }

        }
        return null;
    }

    public final void x()
    {
        if (g != null)
        {
            for (int i1 = 0; i1 < g.size(); i1++)
            {
                Fragment fragment = (Fragment)g.get(i1);
                if (fragment != null)
                {
                    fragment.N();
                }
            }

        }
    }

    public final MenuInflater y()
    {
        if (g != null)
        {
            for (int i1 = 0; i1 < g.size(); i1++)
            {
                Fragment fragment = (Fragment)g.get(i1);
                if (fragment != null)
                {
                    fragment.P();
                }
            }

        }
        return null;
    }

    static 
    {
        int i1 = android.os.Build.VERSION.SDK_INT;
        boolean flag = false;
        if (i1 >= 11)
        {
            flag = true;
        }
        b = flag;
    }
}
