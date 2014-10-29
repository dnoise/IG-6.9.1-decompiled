.class final Lcom/instagram/android/fragment/eb;
.super Landroid/os/Handler;
.source "SearchFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ea;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ea;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/instagram/android/fragment/eb;->a:Lcom/instagram/android/fragment/ea;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/instagram/android/fragment/eb;->a:Lcom/instagram/android/fragment/ea;

    iget-object v1, p0, Lcom/instagram/android/fragment/eb;->a:Lcom/instagram/android/fragment/ea;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/ea;->ad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ea;->b(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method
