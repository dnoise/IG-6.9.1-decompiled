.class final Lcom/instagram/android/directshare/d/v;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Lcom/instagram/android/widget/p;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/instagram/android/directshare/d/v;->a:Lcom/instagram/android/directshare/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 262
    if-ge p1, p2, :cond_0

    iget-object v0, p0, Lcom/instagram/android/directshare/d/v;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->g(Lcom/instagram/android/directshare/d/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/instagram/android/directshare/d/v;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->h(Lcom/instagram/android/directshare/d/c;)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/directshare/d/v;->a:Lcom/instagram/android/directshare/d/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/d/c;->b(Lcom/instagram/android/directshare/d/c;Z)Z

    .line 269
    return-void
.end method
