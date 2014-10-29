.class final Lcom/instagram/android/fragment/dp;
.super Ljava/lang/Object;
.source "RecommendedUserFragment.java"

# interfaces
.implements Lcom/instagram/common/j/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/common/j/d",
        "<",
        "Lcom/instagram/user/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/dn;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/dn;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/instagram/android/fragment/dp;->a:Lcom/instagram/android/fragment/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v0, p0, Lcom/instagram/android/fragment/dp;->a:Lcom/instagram/android/fragment/dn;

    invoke-static {v0}, Lcom/instagram/android/fragment/dn;->b(Lcom/instagram/android/fragment/dn;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    iget-object v0, p0, Lcom/instagram/android/fragment/dp;->a:Lcom/instagram/android/fragment/dn;

    invoke-static {v0}, Lcom/instagram/android/fragment/dn;->b(Lcom/instagram/android/fragment/dn;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 82
    return-void
.end method

.method private a(Lcom/instagram/user/c/d;)Z
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/android/fragment/dp;->a:Lcom/instagram/android/fragment/dn;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/dn;->d()Lcom/instagram/android/a/m;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/user/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/m;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/instagram/common/j/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    check-cast p1, Lcom/instagram/user/c/d;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/dp;->a(Lcom/instagram/user/c/d;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Lcom/instagram/common/j/a;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/instagram/android/fragment/dp;->a()V

    return-void
.end method
