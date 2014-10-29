// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.facebook.e.b.a.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.HashMap;

// Referenced classes of package android.support.v4.app:
//            l, u, m, Fragment, 
//            ap, p, a, r, 
//            o, n, q, s, 
//            an

public class k extends Activity
{

    final Handler a = new l(this);
    final u b = new u();
    u c;
    final q d = new m(this);
    boolean e;
    boolean f;
    boolean g;
    boolean h;
    boolean i;
    boolean j;
    boolean k;
    boolean l;
    HashMap m;
    ap n;
    p o;

    public k()
    {
        c = null;
    }

    private Fragment a(int i1)
    {
        return b.d(i1);
    }

    private static String a(View view)
    {
        char c1;
        char c2;
        StringBuilder stringbuilder;
        c1 = 'F';
        c2 = '.';
        stringbuilder = new StringBuilder(128);
        stringbuilder.append(view.getClass().getName());
        stringbuilder.append('{');
        stringbuilder.append(Integer.toHexString(System.identityHashCode(view)));
        stringbuilder.append(' ');
        view.getVisibility();
        JVM INSTR lookupswitch 3: default 92
    //                   0: 497
    //                   4: 507
    //                   8: 517;
           goto _L1 _L2 _L3 _L4
_L1:
        stringbuilder.append(c2);
_L11:
        String s;
        char c3;
        char c4;
        char c5;
        char c6;
        char c7;
        char c8;
        char c9;
        char c10;
        int i1;
        Resources resources;
        String s1;
        String s2;
        if (view.isFocusable())
        {
            c3 = c1;
        } else
        {
            c3 = c2;
        }
        stringbuilder.append(c3);
        if (view.isEnabled())
        {
            c4 = 'E';
        } else
        {
            c4 = c2;
        }
        stringbuilder.append(c4);
        if (view.willNotDraw())
        {
            c5 = c2;
        } else
        {
            c5 = 'D';
        }
        stringbuilder.append(c5);
        if (view.isHorizontalScrollBarEnabled())
        {
            c6 = 'H';
        } else
        {
            c6 = c2;
        }
        stringbuilder.append(c6);
        if (view.isVerticalScrollBarEnabled())
        {
            c7 = 'V';
        } else
        {
            c7 = c2;
        }
        stringbuilder.append(c7);
        if (view.isClickable())
        {
            c8 = 'C';
        } else
        {
            c8 = c2;
        }
        stringbuilder.append(c8);
        if (view.isLongClickable())
        {
            c9 = 'L';
        } else
        {
            c9 = c2;
        }
        stringbuilder.append(c9);
        stringbuilder.append(' ');
        if (!view.isFocused())
        {
            c1 = c2;
        }
        stringbuilder.append(c1);
        if (view.isSelected())
        {
            c10 = 'S';
        } else
        {
            c10 = c2;
        }
        stringbuilder.append(c10);
        if (view.isPressed())
        {
            c2 = 'P';
        }
        stringbuilder.append(c2);
        stringbuilder.append(' ');
        stringbuilder.append(view.getLeft());
        stringbuilder.append(',');
        stringbuilder.append(view.getTop());
        stringbuilder.append('-');
        stringbuilder.append(view.getRight());
        stringbuilder.append(',');
        stringbuilder.append(view.getBottom());
        i1 = view.getId();
        if (i1 == -1) goto _L6; else goto _L5
_L5:
        stringbuilder.append(" #");
        stringbuilder.append(Integer.toHexString(i1));
        resources = view.getResources();
        if (i1 == 0 || resources == null) goto _L6; else goto _L7
_L7:
        0xff000000 & i1;
        JVM INSTR lookupswitch 2: default 416
    //                   16777216: 588
    //                   2130706432: 581;
           goto _L8 _L9 _L10
_L8:
        s = resources.getResourcePackageName(i1);
_L12:
        s1 = resources.getResourceTypeName(i1);
        s2 = resources.getResourceEntryName(i1);
        stringbuilder.append(" ");
        stringbuilder.append(s);
        stringbuilder.append(":");
        stringbuilder.append(s1);
        stringbuilder.append("/");
        stringbuilder.append(s2);
_L6:
        stringbuilder.append("}");
        return stringbuilder.toString();
_L2:
        stringbuilder.append('V');
          goto _L11
_L3:
        stringbuilder.append('I');
          goto _L11
_L4:
        stringbuilder.append('G');
          goto _L11
_L10:
        s = "app";
          goto _L12
_L9:
        s = "android";
          goto _L12
        android.content.res.Resources.NotFoundException notfoundexception;
        notfoundexception;
          goto _L6
    }

    private static void a(String s, PrintWriter printwriter, View view)
    {
        printwriter.print(s);
        if (view != null) goto _L2; else goto _L1
_L1:
        printwriter.println("null");
_L4:
        return;
_L2:
        printwriter.println(a(view));
        if (view instanceof ViewGroup)
        {
            ViewGroup viewgroup = (ViewGroup)view;
            int i1 = viewgroup.getChildCount();
            if (i1 > 0)
            {
                String s1 = (new StringBuilder()).append(s).append("  ").toString();
                int j1 = 0;
                while (j1 < i1) 
                {
                    a(s1, printwriter, viewgroup.getChildAt(j1));
                    j1++;
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private int b(Fragment fragment)
    {
        b.c(0);
        return fragment.p;
    }

    private void f()
    {
        if (l)
        {
            l = false;
            if (n != null)
            {
                if (!i)
                {
                    n.c();
                } else
                {
                    n.d();
                }
            }
        }
        b.s();
    }

    private r g()
    {
        if (o == null)
        {
            o = new p(this);
        }
        return o;
    }

    final ap a(String s, boolean flag, boolean flag1)
    {
        if (m == null)
        {
            m = new HashMap();
        }
        ap ap1 = (ap)m.get(s);
        if (ap1 == null)
        {
            if (flag1)
            {
                ap1 = new ap(s, g(), flag);
                m.put(s, ap1);
            }
            return ap1;
        } else
        {
            ap1.a(g());
            return ap1;
        }
    }

    public void a(Fragment fragment)
    {
    }

    public final void a(Fragment fragment, Intent intent, int i1)
    {
        if (i1 == -1)
        {
            super.startActivityForResult(intent, -1);
            return;
        }
        if ((i1 & 0xffff0000) != 0)
        {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
        int j1 = b(fragment);
        if ((0xffff0000 & j1) != 0)
        {
            throw new IllegalArgumentException("Can only use lower 16 bits for fragment ID");
        } else
        {
            super.startActivityForResult(intent, (j1 << 16) + (0xffff & i1));
            return;
        }
    }

    public final void a(s s)
    {
        c = (u)s;
    }

    final void a(String s)
    {
        if (m != null)
        {
            ap ap1 = (ap)m.get(s);
            if (ap1 != null && !ap1.g)
            {
                ap1.h();
                m.remove(s);
            }
        }
    }

    final void a(boolean flag)
    {
        if (!h)
        {
            h = true;
            i = flag;
            a.removeMessages(1);
            f();
        }
    }

    protected final void b()
    {
        b.p();
    }

    public final s b_()
    {
        return c;
    }

    public final void c()
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            android.support.v4.app.a.a(this);
        } else
        {
            j = true;
        }
        b.x();
    }

    public final s d()
    {
        return b;
    }

    public void dump(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        int _tmp = android.os.Build.VERSION.SDK_INT;
        printwriter.print(s);
        printwriter.print("Local FragmentActivity ");
        printwriter.print(Integer.toHexString(System.identityHashCode(this)));
        printwriter.println(" State:");
        String s1 = (new StringBuilder()).append(s).append("  ").toString();
        printwriter.print(s1);
        printwriter.print("mCreated=");
        printwriter.print(e);
        printwriter.print("mResumed=");
        printwriter.print(f);
        printwriter.print(" mStopped=");
        printwriter.print(g);
        printwriter.print(" mReallyStopped=");
        printwriter.println(h);
        printwriter.print(s1);
        printwriter.print("mLoadersStarted=");
        printwriter.println(l);
        if (n != null)
        {
            printwriter.print(s);
            printwriter.print("Loader Manager ");
            printwriter.print(Integer.toHexString(System.identityHashCode(n)));
            printwriter.println(":");
            n.a((new StringBuilder()).append(s).append("  ").toString(), filedescriptor, printwriter, as);
        }
        b.a(s, filedescriptor, printwriter, as);
        printwriter.print(s);
        printwriter.println("View Hierarchy:");
        a((new StringBuilder()).append(s).append("  ").toString(), printwriter, getWindow().getDecorView());
    }

    public final an e()
    {
        if (n != null)
        {
            return n;
        } else
        {
            k = true;
            n = a(((String) (null)), l, true);
            return n;
        }
    }

    public MenuInflater getMenuInflater()
    {
        MenuInflater menuinflater = b.y();
        if (menuinflater != null)
        {
            return menuinflater;
        } else
        {
            return super.getMenuInflater();
        }
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        com.facebook.e.b.a.a.a(intent);
        b.l();
        int k1 = i1 >> 16;
        if (k1 != 0)
        {
            if (k1 < 0)
            {
                (new StringBuilder("Activity result fragment index out of range: 0x")).append(Integer.toHexString(i1));
                return;
            }
            Fragment fragment = a(k1);
            if (fragment == null)
            {
                (new StringBuilder("Activity result no fragment exists for index: 0x")).append(Integer.toHexString(i1));
                return;
            } else
            {
                fragment.a(0xffff & i1, j1, intent);
                return;
            }
        } else
        {
            super.onActivityResult(i1, j1, intent);
            return;
        }
    }

    public void onBackPressed()
    {
        if (!b.e())
        {
            finish();
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        b.a(configuration);
    }

    protected void onCreate(Bundle bundle)
    {
        b.a(g(), d, null);
        if (getLayoutInflater().getFactory() == null)
        {
            getLayoutInflater().setFactory(this);
        }
        (new StringBuilder()).append(getClass().getName()).append(".onCreate() with saved state");
        com.facebook.e.b.a.a.b(bundle);
        super.onCreate(bundle);
        if (!g().f())
        {
            o o1 = (o)getLastNonConfigurationInstance();
            if (o1 != null)
            {
                m = o1.e;
            }
            if (bundle != null)
            {
                android.os.Parcelable parcelable = bundle.getParcelable("android:support:fragments");
                u u1 = b;
                java.util.ArrayList arraylist;
                if (o1 != null)
                {
                    arraylist = o1.d;
                } else
                {
                    arraylist = null;
                }
                u1.a(parcelable, arraylist);
            }
            b.m();
        }
    }

    public boolean onCreatePanelMenu(int i1, Menu menu)
    {
        if (i1 == 0)
        {
            boolean flag = super.onCreatePanelMenu(i1, menu) | b.a(menu, getMenuInflater());
            if (android.os.Build.VERSION.SDK_INT >= 11)
            {
                return flag;
            } else
            {
                return true;
            }
        } else
        {
            return super.onCreatePanelMenu(i1, menu);
        }
    }

    public View onCreatePanelView(int i1)
    {
        if (i1 == 0)
        {
            View view = b.w();
            if (view != null)
            {
                return view;
            }
        }
        return super.onCreatePanelView(i1);
    }

    public View onCreateView(String s, Context context, AttributeSet attributeset)
    {
        if (!"fragment".equals(s))
        {
            return super.onCreateView(s, context, attributeset);
        }
        String s1 = attributeset.getAttributeValue(null, "class");
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, android.support.v4.app.n.a);
        if (s1 == null)
        {
            s1 = typedarray.getString(0);
        }
        int i1 = typedarray.getResourceId(1, -1);
        String s2 = typedarray.getString(2);
        typedarray.recycle();
        if (i1 == -1 && s2 == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append(attributeset.getPositionDescription()).append(": Must specify unique android:id, android:tag, or have a parent with an id for ").append(s1).toString());
        }
        u u1;
        Fragment fragment;
        if (c != null)
        {
            u1 = c;
        } else
        {
            u1 = b;
        }
        fragment = null;
        if (i1 != -1)
        {
            fragment = u1.a(i1);
        }
        if (fragment == null && s2 != null)
        {
            fragment = u1.a(s2);
        }
        if (android.support.v4.app.u.a)
        {
            (new StringBuilder("onCreateView: id=0x")).append(Integer.toHexString(i1)).append(" fname=").append(s1).append(" existing=").append(fragment);
        }
        if (fragment == null)
        {
            Fragment fragment1 = android.support.v4.app.Fragment.a(this, s1);
            fragment1.y = true;
            int j1;
            if (i1 != 0)
            {
                j1 = i1;
            } else
            {
                j1 = -1;
            }
            fragment1.G = j1;
            fragment1.H = -1;
            fragment1.I = s2;
            fragment1.z = true;
            fragment1.C = u1;
            Bundle _tmp = fragment1.m;
            fragment1.A();
            u1.a(fragment1, true);
            fragment = fragment1;
        } else
        {
            if (fragment.z)
            {
                throw new IllegalArgumentException((new StringBuilder()).append(attributeset.getPositionDescription()).append(": Duplicate id 0x").append(Integer.toHexString(i1)).append(", tag ").append(s2).append(", or parent id 0x").append(Integer.toHexString(-1)).append(" with another fragment for ").append(s1).toString());
            }
            fragment.z = true;
            if (!fragment.M)
            {
                Bundle _tmp1 = fragment.m;
                fragment.A();
            }
            u1.b(fragment);
        }
        if (fragment.S == null)
        {
            throw new IllegalStateException((new StringBuilder("Fragment ")).append(s1).append(" did not create a view.").toString());
        }
        if (i1 != 0)
        {
            fragment.S.setId(i1);
        }
        if (fragment.S.getTag() == null)
        {
            fragment.S.setTag(s2);
        }
        return fragment.S;
    }

    protected void onDestroy()
    {
        super.onDestroy();
        a(false);
        b.u();
        if (n != null)
        {
            n.h();
        }
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        if (android.os.Build.VERSION.SDK_INT < 5 && i1 == 4 && keyevent.getRepeatCount() == 0)
        {
            onBackPressed();
            return true;
        } else
        {
            return super.onKeyDown(i1, keyevent);
        }
    }

    public void onLowMemory()
    {
        super.onLowMemory();
        b.v();
    }

    public boolean onMenuItemSelected(int i1, MenuItem menuitem)
    {
        if (super.onMenuItemSelected(i1, menuitem))
        {
            return true;
        }
        switch (i1)
        {
        default:
            return false;

        case 0: // '\0'
            return b.a(menuitem);

        case 6: // '\006'
            return b.b(menuitem);
        }
    }

    protected void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        b.l();
    }

    public void onPanelClosed(int i1, Menu menu)
    {
        i1;
        JVM INSTR tableswitch 0 0: default 20
    //                   0 27;
           goto _L1 _L2
_L1:
        super.onPanelClosed(i1, menu);
        return;
_L2:
        b.b(menu);
        if (true) goto _L1; else goto _L3
_L3:
    }

    protected void onPause()
    {
        super.onPause();
        f = false;
        if (a.hasMessages(2))
        {
            a.removeMessages(2);
            b();
        }
        b.q();
    }

    protected void onPostResume()
    {
        super.onPostResume();
        a.removeMessages(2);
        b();
        b.i();
    }

    public boolean onPreparePanel(int i1, View view, Menu menu)
    {
        if (i1 == 0 && menu != null)
        {
            if (j)
            {
                j = false;
                menu.clear();
                onCreatePanelMenu(i1, menu);
            }
            boolean flag = super.onPreparePanel(i1, view, menu) | b.a(menu);
            boolean flag1 = false;
            if (flag)
            {
                boolean flag2 = menu.hasVisibleItems();
                flag1 = false;
                if (flag2)
                {
                    flag1 = true;
                }
            }
            return flag1;
        } else
        {
            return super.onPreparePanel(i1, view, menu);
        }
    }

    protected void onResume()
    {
        super.onResume();
        a.sendEmptyMessage(2);
        f = true;
        b.i();
    }

    public final Object onRetainNonConfigurationInstance()
    {
        int i1 = 0;
        if (g)
        {
            a(true);
        }
        java.util.ArrayList arraylist = b.j();
        boolean flag;
        if (m != null)
        {
            ap aap[] = new ap[m.size()];
            m.values().toArray(aap);
            flag = false;
            while (i1 < aap.length) 
            {
                ap ap1 = aap[i1];
                if (ap1.g)
                {
                    flag = true;
                } else
                {
                    ap1.h();
                    m.remove(ap1.d);
                }
                i1++;
            }
        } else
        {
            flag = false;
        }
        if (arraylist == null && !flag)
        {
            return null;
        } else
        {
            o o1 = new o();
            o1.a = null;
            o1.b = null;
            o1.c = null;
            o1.d = arraylist;
            o1.e = m;
            return o1;
        }
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        android.os.Parcelable parcelable = b.k();
        com.facebook.e.b.a.a.b(parcelable);
        if (parcelable != null)
        {
            bundle.putParcelable("android:support:fragments", parcelable);
        }
    }

    protected void onStart()
    {
        int i1;
        i1 = 0;
        super.onStart();
        g = false;
        h = false;
        a.removeMessages(1);
        if (!e)
        {
            e = true;
            b.n();
        }
        b.l();
        b.i();
        if (l) goto _L2; else goto _L1
_L1:
        l = true;
        if (n == null) goto _L4; else goto _L3
_L3:
        n.b();
_L6:
        k = true;
_L2:
        b.o();
        if (m != null)
        {
            ap aap[] = new ap[m.size()];
            m.values().toArray(aap);
            for (; i1 < aap.length; i1++)
            {
                ap ap1 = aap[i1];
                ap1.e();
                ap1.g();
            }

        }
        break; /* Loop/switch isn't completed */
_L4:
        if (!k)
        {
            n = a(((String) (null)), l, false);
            if (n != null && !n.f)
            {
                n.b();
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void onStop()
    {
        super.onStop();
        g = true;
        a.sendEmptyMessage(1);
        b.r();
    }

    public void startActivityForResult(Intent intent, int i1)
    {
        if (i1 != -1 && (0xffff0000 & i1) != 0)
        {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        } else
        {
            super.startActivityForResult(intent, i1);
            return;
        }
    }
}
