// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import java.io.PrintWriter;
import java.util.ArrayList;

// Referenced classes of package android.support.v4.app:
//            ag, Fragment, c, u

final class b extends ag
    implements Runnable
{

    final u a;
    c b;
    c c;
    int d;
    int e;
    int f;
    int g;
    int h;
    int i;
    int j;
    boolean k;
    boolean l;
    String m;
    boolean n;
    int o;
    int p;
    CharSequence q;
    int r;
    CharSequence s;

    public b(u u1)
    {
        l = true;
        o = -1;
        a = u1;
    }

    private void a(int i1, Fragment fragment, String s1, int j1)
    {
        fragment.C = a;
        if (s1 != null)
        {
            if (fragment.I != null && !s1.equals(fragment.I))
            {
                throw new IllegalStateException((new StringBuilder("Can't change tag of fragment ")).append(fragment).append(": was ").append(fragment.I).append(" now ").append(s1).toString());
            }
            fragment.I = s1;
        }
        if (i1 != 0)
        {
            if (fragment.G != 0 && fragment.G != i1)
            {
                throw new IllegalStateException((new StringBuilder("Can't change container ID of fragment ")).append(fragment).append(": was ").append(fragment.G).append(" now ").append(i1).toString());
            }
            fragment.G = i1;
            fragment.H = i1;
        }
        c c1 = new c();
        c1.c = j1;
        c1.d = fragment;
        a(c1);
    }

    private int b(boolean flag)
    {
        if (n)
        {
            throw new IllegalStateException("commit already called");
        }
        if (u.a)
        {
            (new StringBuilder("Commit: ")).append(this);
            a("  ", new PrintWriter(new android.support.v4.c.b("FragmentManager")));
        }
        n = true;
        if (k)
        {
            o = a.a(this);
        } else
        {
            o = -1;
        }
        a.a(this, flag);
        return o;
    }

    public final ag a()
    {
        e = 0x10a0000;
        f = 0x10a0001;
        g = 0x10a0000;
        h = 0x10a0001;
        return this;
    }

    public final ag a(int i1, Fragment fragment)
    {
        a(i1, fragment, null, 1);
        return this;
    }

    public final ag a(int i1, Fragment fragment, String s1)
    {
        a(i1, fragment, s1, 1);
        return this;
    }

    public final ag a(Fragment fragment)
    {
        c c1 = new c();
        c1.c = 3;
        c1.d = fragment;
        a(c1);
        return this;
    }

    public final ag a(Fragment fragment, String s1)
    {
        a(0, fragment, s1, 1);
        return this;
    }

    public final ag a(String s1)
    {
        if (!l)
        {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        } else
        {
            k = true;
            m = s1;
            return this;
        }
    }

    final void a(int i1)
    {
        if (k)
        {
            if (u.a)
            {
                (new StringBuilder("Bump nesting in ")).append(this).append(" by ").append(i1);
            }
            c c1 = b;
            while (c1 != null) 
            {
                if (c1.d != null)
                {
                    Fragment fragment1 = c1.d;
                    fragment1.B = i1 + fragment1.B;
                    if (u.a)
                    {
                        (new StringBuilder("Bump nesting of ")).append(c1.d).append(" to ").append(c1.d.B);
                    }
                }
                if (c1.i != null)
                {
                    for (int j1 = -1 + c1.i.size(); j1 >= 0; j1--)
                    {
                        Fragment fragment = (Fragment)c1.i.get(j1);
                        fragment.B = i1 + fragment.B;
                        if (u.a)
                        {
                            (new StringBuilder("Bump nesting of ")).append(fragment).append(" to ").append(fragment.B);
                        }
                    }

                }
                c1 = c1.a;
            }
        }
    }

    final void a(c c1)
    {
        if (b == null)
        {
            c = c1;
            b = c1;
        } else
        {
            c1.b = c;
            c.a = c1;
            c = c1;
        }
        c1.e = e;
        c1.f = f;
        c1.g = g;
        c1.h = h;
        d = 1 + d;
    }

    public final void a(String s1, PrintWriter printwriter)
    {
        a(s1, printwriter, true);
    }

    public final void a(String s1, PrintWriter printwriter, boolean flag)
    {
        String s2;
        int i1;
        c c2;
        if (flag)
        {
            printwriter.print(s1);
            printwriter.print("mName=");
            printwriter.print(m);
            printwriter.print(" mIndex=");
            printwriter.print(o);
            printwriter.print(" mCommitted=");
            printwriter.println(n);
            if (i != 0)
            {
                printwriter.print(s1);
                printwriter.print("mTransition=#");
                printwriter.print(Integer.toHexString(i));
                printwriter.print(" mTransitionStyle=#");
                printwriter.println(Integer.toHexString(j));
            }
            if (e != 0 || f != 0)
            {
                printwriter.print(s1);
                printwriter.print("mEnterAnim=#");
                printwriter.print(Integer.toHexString(e));
                printwriter.print(" mExitAnim=#");
                printwriter.println(Integer.toHexString(f));
            }
            if (g != 0 || h != 0)
            {
                printwriter.print(s1);
                printwriter.print("mPopEnterAnim=#");
                printwriter.print(Integer.toHexString(g));
                printwriter.print(" mPopExitAnim=#");
                printwriter.println(Integer.toHexString(h));
            }
            if (p != 0 || q != null)
            {
                printwriter.print(s1);
                printwriter.print("mBreadCrumbTitleRes=#");
                printwriter.print(Integer.toHexString(p));
                printwriter.print(" mBreadCrumbTitleText=");
                printwriter.println(q);
            }
            if (r != 0 || s != null)
            {
                printwriter.print(s1);
                printwriter.print("mBreadCrumbShortTitleRes=#");
                printwriter.print(Integer.toHexString(r));
                printwriter.print(" mBreadCrumbShortTitleText=");
                printwriter.println(s);
            }
        }
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_806;
        }
        printwriter.print(s1);
        printwriter.println("Operations:");
        s2 = (new StringBuilder()).append(s1).append("    ").toString();
        c c1 = b;
        i1 = 0;
        c2 = c1;
_L13:
        if (c2 == null) goto _L2; else goto _L1
_L1:
        c2.c;
        JVM INSTR tableswitch 0 7: default 416
    //                   0 688
    //                   1 696
    //                   2 704
    //                   3 712
    //                   4 720
    //                   5 728
    //                   6 736
    //                   7 744;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L11:
        break MISSING_BLOCK_LABEL_744;
_L3:
        String s3 = (new StringBuilder("cmd=")).append(c2.c).toString();
_L12:
        printwriter.print(s1);
        printwriter.print("  Op #");
        printwriter.print(i1);
        printwriter.print(": ");
        printwriter.print(s3);
        printwriter.print(" ");
        printwriter.println(c2.d);
        if (flag)
        {
            if (c2.e != 0 || c2.f != 0)
            {
                printwriter.print(s1);
                printwriter.print("enterAnim=#");
                printwriter.print(Integer.toHexString(c2.e));
                printwriter.print(" exitAnim=#");
                printwriter.println(Integer.toHexString(c2.f));
            }
            if (c2.g != 0 || c2.h != 0)
            {
                printwriter.print(s1);
                printwriter.print("popEnterAnim=#");
                printwriter.print(Integer.toHexString(c2.g));
                printwriter.print(" popExitAnim=#");
                printwriter.println(Integer.toHexString(c2.h));
            }
        }
        if (c2.i != null && c2.i.size() > 0)
        {
            int j1 = 0;
            while (j1 < c2.i.size()) 
            {
                printwriter.print(s2);
                if (c2.i.size() == 1)
                {
                    printwriter.print("Removed: ");
                } else
                {
                    if (j1 == 0)
                    {
                        printwriter.println("Removed:");
                    }
                    printwriter.print(s2);
                    printwriter.print("  #");
                    printwriter.print(j1);
                    printwriter.print(": ");
                }
                printwriter.println(c2.i.get(j1));
                j1++;
            }
        }
        break MISSING_BLOCK_LABEL_793;
_L4:
        s3 = "NULL";
          goto _L12
_L5:
        s3 = "ADD";
          goto _L12
_L6:
        s3 = "REPLACE";
          goto _L12
_L7:
        s3 = "REMOVE";
          goto _L12
_L8:
        s3 = "HIDE";
          goto _L12
_L9:
        s3 = "SHOW";
          goto _L12
_L10:
        s3 = "DETACH";
          goto _L12
        s3 = "ATTACH";
          goto _L12
        c2 = c2.a;
        i1++;
          goto _L13
_L2:
    }

    public final void a(boolean flag)
    {
        c c1;
        if (u.a)
        {
            (new StringBuilder("popFromBackStack: ")).append(this);
            a("  ", new PrintWriter(new android.support.v4.c.b("FragmentManager")));
        }
        a(-1);
        c1 = c;
_L10:
        if (c1 == null)
        {
            break MISSING_BLOCK_LABEL_453;
        }
        c1.c;
        JVM INSTR tableswitch 1 7: default 104
    //                   1 132
    //                   2 175
    //                   3 276
    //                   4 304
    //                   5 342
    //                   6 380
    //                   7 418;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L8:
        break MISSING_BLOCK_LABEL_418;
_L3:
        break; /* Loop/switch isn't completed */
_L1:
        throw new IllegalArgumentException((new StringBuilder("Unknown cmd: ")).append(c1.c).toString());
_L2:
        Fragment fragment7 = c1.d;
        fragment7.Q = c1.h;
        a.a(fragment7, u.f(i), j);
_L11:
        c1 = c1.b;
        if (true) goto _L10; else goto _L9
_L9:
        Fragment fragment5 = c1.d;
        if (fragment5 != null)
        {
            fragment5.Q = c1.h;
            a.a(fragment5, u.f(i), j);
        }
        if (c1.i != null)
        {
            int i1 = 0;
            while (i1 < c1.i.size()) 
            {
                Fragment fragment6 = (Fragment)c1.i.get(i1);
                fragment6.Q = c1.g;
                a.a(fragment6, false);
                i1++;
            }
        }
          goto _L11
_L4:
        Fragment fragment4 = c1.d;
        fragment4.Q = c1.g;
        a.a(fragment4, false);
          goto _L11
_L5:
        Fragment fragment3 = c1.d;
        fragment3.Q = c1.g;
        a.c(fragment3, u.f(i), j);
          goto _L11
_L6:
        Fragment fragment2 = c1.d;
        fragment2.Q = c1.h;
        a.b(fragment2, u.f(i), j);
          goto _L11
_L7:
        Fragment fragment1 = c1.d;
        fragment1.Q = c1.g;
        a.e(fragment1, u.f(i), j);
          goto _L11
        Fragment fragment = c1.d;
        fragment.Q = c1.g;
        a.d(fragment, u.f(i), j);
          goto _L11
        if (flag)
        {
            a.a(a.n, u.f(i), j, true);
        }
        if (o >= 0)
        {
            a.e(o);
            o = -1;
        }
        return;
    }

    public final int b()
    {
        return b(false);
    }

    public final ag b(int i1, Fragment fragment)
    {
        return b(i1, fragment, null);
    }

    public final ag b(int i1, Fragment fragment, String s1)
    {
        if (i1 == 0)
        {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        } else
        {
            a(i1, fragment, s1, 2);
            return this;
        }
    }

    public final ag b(Fragment fragment)
    {
        c c1 = new c();
        c1.c = 6;
        c1.d = fragment;
        a(c1);
        return this;
    }

    public final int c()
    {
        return b(true);
    }

    public final ag c(Fragment fragment)
    {
        c c1 = new c();
        c1.c = 7;
        c1.d = fragment;
        a(c1);
        return this;
    }

    public final String d()
    {
        return m;
    }

    public final void run()
    {
        c c1;
        if (u.a)
        {
            (new StringBuilder("Run: ")).append(this);
        }
        if (k && o < 0)
        {
            throw new IllegalStateException("addToBackStack() called after commit()");
        }
        a(1);
        c1 = b;
_L10:
        if (c1 == null)
        {
            break MISSING_BLOCK_LABEL_606;
        }
        c1.c;
        JVM INSTR tableswitch 1 7: default 108
    //                   1 136
    //                   2 169
    //                   3 437
    //                   4 472
    //                   5 507
    //                   6 542
    //                   7 574;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L8:
        break MISSING_BLOCK_LABEL_574;
_L3:
        break; /* Loop/switch isn't completed */
_L1:
        throw new IllegalArgumentException((new StringBuilder("Unknown cmd: ")).append(c1.c).toString());
_L2:
        Fragment fragment8 = c1.d;
        fragment8.Q = c1.e;
        a.a(fragment8, false);
_L11:
        c1 = c1.a;
        if (true) goto _L10; else goto _L9
_L9:
        Fragment fragment5 = c1.d;
        Fragment fragment6;
        if (a.g != null)
        {
            int i1 = 0;
            fragment6 = fragment5;
            while (i1 < a.g.size()) 
            {
                Fragment fragment7 = (Fragment)a.g.get(i1);
                if (u.a)
                {
                    (new StringBuilder("OP_REPLACE: adding=")).append(fragment6).append(" old=").append(fragment7);
                }
                if (fragment6 == null || fragment7.H == fragment6.H)
                {
                    if (fragment7 == fragment6)
                    {
                        fragment6 = null;
                        c1.d = null;
                    } else
                    {
                        if (c1.i == null)
                        {
                            c1.i = new ArrayList();
                        }
                        c1.i.add(fragment7);
                        fragment7.Q = c1.f;
                        if (k)
                        {
                            fragment7.B = 1 + fragment7.B;
                            if (u.a)
                            {
                                (new StringBuilder("Bump nesting of ")).append(fragment7).append(" to ").append(fragment7.B);
                            }
                        }
                        a.a(fragment7, i, j);
                    }
                }
                i1++;
            }
        } else
        {
            fragment6 = fragment5;
        }
        if (fragment6 != null)
        {
            fragment6.Q = c1.e;
            a.a(fragment6, false);
        }
          goto _L11
_L4:
        Fragment fragment4 = c1.d;
        fragment4.Q = c1.f;
        a.a(fragment4, i, j);
          goto _L11
_L5:
        Fragment fragment3 = c1.d;
        fragment3.Q = c1.f;
        a.b(fragment3, i, j);
          goto _L11
_L6:
        Fragment fragment2 = c1.d;
        fragment2.Q = c1.e;
        a.c(fragment2, i, j);
          goto _L11
_L7:
        Fragment fragment1 = c1.d;
        fragment1.Q = c1.f;
        a.d(fragment1, i, j);
          goto _L11
        Fragment fragment = c1.d;
        fragment.Q = c1.e;
        a.e(fragment, i, j);
          goto _L11
        a.a(a.n, i, j, true);
        if (k)
        {
            a.b(this);
        }
        return;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(128);
        stringbuilder.append("BackStackEntry{");
        stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
        if (o >= 0)
        {
            stringbuilder.append(" #");
            stringbuilder.append(o);
        }
        if (m != null)
        {
            stringbuilder.append(" ");
            stringbuilder.append(m);
        }
        stringbuilder.append("}");
        return stringbuilder.toString();
    }
}
