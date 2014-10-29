// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.gl;

import android.content.Context;
import android.graphics.Matrix;
import android.opengl.GLSurfaceView;
import android.os.Process;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import com.instagram.creation.video.l.a;
import com.instagram.creation.video.l.j;
import com.instagram.creation.video.ui.e;
import java.util.ArrayDeque;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import javax.microedition.khronos.opengles.GL11;

// Referenced classes of package com.instagram.creation.video.gl:
//            q, w, u, s, 
//            c, v, ac, t, 
//            d, a

public class GLRootView extends GLSurfaceView
    implements android.opengl.GLSurfaceView.Renderer, q
{

    private int a;
    private long b;
    private int c;
    private GL11 d;
    private c e;
    private v f;
    private e g;
    private int h;
    private Matrix i;
    private int j;
    private int k;
    private volatile boolean l;
    private final w m;
    private final ArrayDeque n;
    private final u o;
    private final ReentrantLock p;
    private final Condition q;
    private boolean r;
    private boolean s;
    private boolean t;
    private Runnable u;

    public GLRootView(Context context)
    {
        this(context, null);
    }

    public GLRootView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 0;
        b = 0L;
        c = 0;
        i = new Matrix();
        k = 2;
        l = false;
        m = new w();
        n = new ArrayDeque();
        o = new u(this, (byte)0);
        p = new ReentrantLock();
        q = p.newCondition();
        s = false;
        t = true;
        u = new s(this);
        k = 1 | k;
        setBackgroundDrawable(null);
        setEGLConfigChooser(m);
        setRenderer(this);
        if (a.a)
        {
            getHolder().setFormat(3);
            return;
        } else
        {
            getHolder().setFormat(4);
            return;
        }
    }

    private void a(int i1)
    {
        if (i1 == 0)
        {
            return;
        }
        int j1 = getWidth();
        int k1 = getHeight();
        int l1 = j1 / 2;
        int i2 = k1 / 2;
        e.a(l1, i2);
        e.b(i1);
        if (i1 % 180 != 0)
        {
            e.a(-i2, -l1);
            return;
        } else
        {
            e.a(-l1, -i2);
            return;
        }
    }

    static void a(GLRootView glrootview)
    {
        glrootview.b();
    }

    static ArrayDeque b(GLRootView glrootview)
    {
        return glrootview.n;
    }

    private void b()
    {
        super.requestRender();
    }

    static ReentrantLock c(GLRootView glrootview)
    {
        return glrootview.p;
    }

    private void c()
    {
        p.lock();
        int i1;
        if (f == null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        i1 = k;
        if ((i1 & 2) == 0)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        p.unlock();
        return;
        int j1 = k;
        if ((j1 & 1) == 0)
        {
            p.unlock();
            return;
        }
        k = 2 | k;
        requestRender();
        p.unlock();
        return;
        Exception exception;
        exception;
        p.unlock();
        throw exception;
    }

    static c d(GLRootView glrootview)
    {
        return glrootview.e;
    }

    private void d()
    {
        k = -3 & k;
        int i1 = getWidth();
        int j1 = getHeight();
        int k1;
        int l1;
        int i2;
        if (g != null)
        {
            l1 = g.a();
            k1 = g.b();
        } else
        {
            k1 = 0;
            l1 = 0;
        }
        if (h != k1)
        {
            h = k1;
            if (h % 180 != 0)
            {
                i.setRotate(h);
                i.preTranslate(-i1 / 2, -j1 / 2);
                i.postTranslate(j1 / 2, i1 / 2);
            } else
            {
                i.setRotate(h, i1 / 2, j1 / 2);
            }
        }
        j = l1;
        if (h % 180 != 0)
        {
            i2 = i1;
        } else
        {
            i2 = j1;
            j1 = i1;
        }
        (new StringBuilder("layout content pane ")).append(j1).append("x").append(i2).append(" (compensation ").append(h).append(")");
        if (f != null && j1 != 0 && i2 != 0)
        {
            f.a(j1, i2);
        }
    }

    private void e()
    {
        e.e();
        ac.n();
        l = false;
        if ((2 & k) != 0)
        {
            d();
        }
        e.a(-1);
        a(-h);
        if (f != null)
        {
            f.a(e);
        }
        e.c();
        if (ac.o())
        {
            requestRender();
        }
        synchronized (n)
        {
            if (!n.isEmpty())
            {
                o.a();
            }
        }
    }

    static boolean e(GLRootView glrootview)
    {
        return glrootview.l;
    }

    private void f()
    {
        p.lock();
        r = false;
        q.signalAll();
        p.unlock();
    }

    public final void a()
    {
        b();
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        int i1;
        if (!isEnabled())
        {
            return false;
        }
        i1 = motionevent.getAction();
        if (i1 != 3 && i1 != 1) goto _L2; else goto _L1
_L1:
        s = false;
_L4:
        if (h != 0)
        {
            motionevent = com.instagram.creation.video.l.e.a(motionevent, i);
        }
        p.lock();
        v v1 = f;
        boolean flag;
        flag = false;
        if (v1 == null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        boolean flag1 = f.a(motionevent);
        flag = false;
        if (flag1)
        {
            flag = true;
        }
        if (i1 != 0 || !flag)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        s = true;
        p.unlock();
        return flag;
_L2:
        if (s || i1 == 0) goto _L4; else goto _L3
_L3:
        return false;
        Exception exception;
        exception;
        p.unlock();
        throw exception;
    }

    protected void finalize()
    {
        f();
        super.finalize();
        return;
        Exception exception;
        exception;
        super.finalize();
        throw exception;
    }

    public int getCompensation()
    {
        return h;
    }

    public Matrix getCompensationMatrix()
    {
        return i;
    }

    public int getDisplayRotation()
    {
        return j;
    }

    protected void onDetachedFromWindow()
    {
        f();
        super.onDetachedFromWindow();
    }

    public void onDrawFrame(GL10 gl10)
    {
        p.lock();
        while (r) 
        {
            q.awaitUninterruptibly();
        }
        e();
        p.unlock();
        if (t)
        {
            t = false;
            post(new t(this));
        }
        return;
        Exception exception;
        exception;
        p.unlock();
        throw exception;
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        if (flag)
        {
            c();
        }
    }

    public void onPause()
    {
        f();
        super.onPause();
    }

    public void onSurfaceChanged(GL10 gl10, int i1, int j1)
    {
        (new StringBuilder("onSurfaceChanged: ")).append(i1).append("x").append(j1).append(", gl10: ").append(gl10.toString());
        Process.setThreadPriority(-4);
        GL11 gl11 = (GL11)gl10;
        boolean flag;
        if (d == gl11)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.instagram.creation.video.l.j.a(flag);
        e.a(i1, j1);
    }

    public void onSurfaceCreated(GL10 gl10, EGLConfig eglconfig)
    {
        GL11 gl11;
        gl11 = (GL11)gl10;
        if (d != null)
        {
            (new StringBuilder("GLObject has changed from ")).append(d).append(" to ").append(gl11);
        }
        p.lock();
        d = gl11;
        e = new d(gl11);
        com.instagram.creation.video.gl.a.l();
        p.unlock();
        setRenderMode(0);
        return;
        Exception exception;
        exception;
        p.unlock();
        throw exception;
    }

    public void requestRender()
    {
        if (l)
        {
            return;
        }
        l = true;
        if (a.k)
        {
            postOnAnimation(u);
            return;
        } else
        {
            super.requestRender();
            return;
        }
    }

    public void setContentPane(v v1)
    {
        if (f != v1)
        {
            if (f != null)
            {
                if (s)
                {
                    long l1 = SystemClock.uptimeMillis();
                    MotionEvent motionevent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
                    f.a(motionevent);
                    motionevent.recycle();
                    s = false;
                }
                f.a();
                com.instagram.creation.video.gl.a.k();
            }
            f = v1;
            if (v1 != null)
            {
                v1.a(this);
                c();
                return;
            }
        }
    }

    public void setLightsOutMode(boolean flag)
    {
        if (!a.g)
        {
            return;
        }
        char c1 = '\0';
        if (flag)
        {
            c1 = '\001';
            if (a.c)
            {
                c1 = '\u0105';
            }
        }
        setSystemUiVisibility(c1);
    }

    public void setOrientationSource(e e1)
    {
        g = e1;
    }

    public void surfaceChanged(SurfaceHolder surfaceholder, int i1, int j1, int k1)
    {
        f();
        super.surfaceChanged(surfaceholder, i1, j1, k1);
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        f();
        super.surfaceCreated(surfaceholder);
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        f();
        super.surfaceDestroyed(surfaceholder);
    }
}
