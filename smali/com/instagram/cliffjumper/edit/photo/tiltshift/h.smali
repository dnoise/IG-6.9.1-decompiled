.class final Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;
.super Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;
.source "TiltShiftFogAnimator.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field final synthetic b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;


# direct methods
.method private constructor <init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFF)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    .line 146
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFFB)V

    .line 147
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFFB)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct/range {p0 .. p6}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFF)V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;)Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 152
    return-void
.end method

.method public final doFrame(J)V
    .locals 0
    .parameter "frameTimeNanos"

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->a(J)V

    .line 157
    return-void
.end method
