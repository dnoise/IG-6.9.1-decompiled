.class final Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;
.super Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;
.source "TiltShiftFogAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 123
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    .line 124
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFFB)V

    .line 125
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
    .line 117
    invoke-direct/range {p0 .. p6}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFF)V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    return-void
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->a(J)V

    .line 135
    return-void
.end method
