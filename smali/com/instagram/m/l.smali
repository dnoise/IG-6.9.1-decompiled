.class final Lcom/instagram/m/l;
.super Ljava/lang/Object;
.source "QuickExperimentManagerImpl.java"


# instance fields
.field final synthetic a:Lcom/instagram/m/k;


# direct methods
.method constructor <init>(Lcom/instagram/m/k;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/instagram/m/l;->a:Lcom/instagram/m/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 237
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/analytics/b;

    const-string v2, "qe_exposure"

    invoke-direct {v1, v2, v5}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v2, "device_id"

    iget-object v3, p0, Lcom/instagram/m/l;->a:Lcom/instagram/m/k;

    invoke-static {v3}, Lcom/instagram/m/k;->c(Lcom/instagram/m/k;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "experiments"

    const-string v3, ","

    iget-object v4, p0, Lcom/instagram/m/l;->a:Lcom/instagram/m/k;

    invoke-static {v4}, Lcom/instagram/m/k;->b(Lcom/instagram/m/k;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 252
    new-instance v0, Lcom/instagram/m/a/a;

    iget-object v1, p0, Lcom/instagram/m/l;->a:Lcom/instagram/m/k;

    invoke-static {v1}, Lcom/instagram/m/k;->c(Lcom/instagram/m/k;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, v5}, Lcom/instagram/m/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v1, Lcom/instagram/m/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/instagram/m/m;-><init>(Lcom/instagram/m/l;B)V

    invoke-virtual {v0, v1}, Lcom/instagram/m/a/a;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    .line 255
    iget-object v1, p0, Lcom/instagram/m/l;->a:Lcom/instagram/m/k;

    invoke-static {v1}, Lcom/instagram/m/k;->d(Lcom/instagram/m/k;)Lcom/instagram/common/a/a/k;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    .line 256
    return-void
.end method
