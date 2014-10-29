.class final Lcom/instagram/android/fragment/ao;
.super Landroid/os/Handler;
.source "EditProfileFragment.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/instagram/android/fragment/ac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/ac;)V
    .locals 1
    .parameter

    .prologue
    .line 681
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 682
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ao;->a:Ljava/lang/ref/WeakReference;

    .line 684
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 688
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 690
    iget-object v0, p0, Lcom/instagram/android/fragment/ao;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/ac;

    .line 692
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ac;->l()Landroid/support/v4/app/k;

    move-result-object v1

    if-nez v1, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 697
    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->b(Lcom/instagram/android/fragment/ac;)V

    goto :goto_0
.end method
