.class final Lcom/instagram/android/k/c/q;
.super Lcom/instagram/android/k/b/d;
.source "UserListFragment.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/instagram/android/k/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/k/c/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/instagram/android/k/c/q;->b:Lcom/instagram/android/k/c/a;

    iput-object p2, p0, Lcom/instagram/android/k/c/q;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/instagram/android/k/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 4
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lcom/instagram/android/k/c/q;->b:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->j(Lcom/instagram/android/k/c/a;)Lcom/instagram/android/k/c/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/k/c/u;->k()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 561
    const-string v0, "max_id"

    iget-object v1, p0, Lcom/instagram/android/k/c/q;->b:Lcom/instagram/android/k/c/a;

    invoke-static {v1}, Lcom/instagram/android/k/c/a;->j(Lcom/instagram/android/k/c/a;)Lcom/instagram/android/k/c/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/k/c/u;->k()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 567
    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/instagram/android/k/c/q;->a:Ljava/lang/String;

    return-object v0
.end method
