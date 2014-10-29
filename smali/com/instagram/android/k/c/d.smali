.class final Lcom/instagram/android/k/c/d;
.super Lcom/instagram/android/k/b/d;
.source "UserListFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/k/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/k/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, Lcom/instagram/android/k/c/d;->a:Lcom/instagram/android/k/c/a;

    invoke-direct {p0}, Lcom/instagram/android/k/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 610
    const-string v0, "fb_access_token"

    iget-object v1, p0, Lcom/instagram/android/k/c/d;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v1}, Lcom/instagram/android/k/c/a;->q(Lcom/instagram/android/k/c/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    const-string v0, "fb/find/?include=extra_display_name"

    return-object v0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x1

    return v0
.end method
