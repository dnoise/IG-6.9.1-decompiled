.class final Lcom/instagram/feed/i/b;
.super Ljava/lang/Object;
.source "CameraNuxHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/feed/i/a;


# direct methods
.method constructor <init>(Lcom/instagram/feed/i/a;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/instagram/feed/i/b;->a:Lcom/instagram/feed/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/feed/i/b;->a:Lcom/instagram/feed/i/a;

    invoke-static {v0}, Lcom/instagram/feed/i/a;->a(Lcom/instagram/feed/i/a;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/instagram/feed/i/b;->a:Lcom/instagram/feed/i/a;

    invoke-static {v0}, Lcom/instagram/feed/i/a;->b(Lcom/instagram/feed/i/a;)V

    .line 74
    iget-object v0, p0, Lcom/instagram/feed/i/b;->a:Lcom/instagram/feed/i/a;

    invoke-static {v0}, Lcom/instagram/feed/i/a;->c(Lcom/instagram/feed/i/a;)V

    .line 76
    :cond_0
    return-void
.end method
