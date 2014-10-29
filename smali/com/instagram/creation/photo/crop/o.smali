.class final Lcom/instagram/creation/photo/crop/o;
.super Lcom/instagram/creation/photo/crop/z;
.source "CropUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/instagram/creation/photo/crop/y;

.field private final b:Landroid/app/ProgressDialog;

.field private final c:Ljava/lang/Runnable;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/instagram/creation/photo/crop/y;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/z;-><init>()V

    .line 21
    new-instance v0, Lcom/instagram/creation/photo/crop/p;

    invoke-direct {v0, p0}, Lcom/instagram/creation/photo/crop/p;-><init>(Lcom/instagram/creation/photo/crop/o;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/o;->e:Ljava/lang/Runnable;

    .line 33
    iput-object p1, p0, Lcom/instagram/creation/photo/crop/o;->a:Lcom/instagram/creation/photo/crop/y;

    .line 34
    iput-object p3, p0, Lcom/instagram/creation/photo/crop/o;->b:Landroid/app/ProgressDialog;

    .line 35
    iput-object p2, p0, Lcom/instagram/creation/photo/crop/o;->c:Ljava/lang/Runnable;

    .line 36
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->a:Lcom/instagram/creation/photo/crop/y;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/photo/crop/y;->a(Lcom/instagram/creation/photo/crop/aa;)V

    .line 37
    iput-object p4, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/photo/crop/o;)Lcom/instagram/creation/photo/crop/y;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->a:Lcom/instagram/creation/photo/crop/y;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/creation/photo/crop/o;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 54
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 60
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 65
    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/o;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/o;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
