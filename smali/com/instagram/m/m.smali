.class final Lcom/instagram/m/m;
.super Lcom/instagram/common/a/a/j;
.source "QuickExperimentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/api/k/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/m/l;


# direct methods
.method private constructor <init>(Lcom/instagram/m/l;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/instagram/m/m;->a:Lcom/instagram/m/l;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/m/l;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/instagram/m/m;-><init>(Lcom/instagram/m/l;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/api/k/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/analytics/b;

    const-string v2, "qe_failure"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v2, "device_id"

    iget-object v3, p0, Lcom/instagram/m/m;->a:Lcom/instagram/m/l;

    iget-object v3, v3, Lcom/instagram/m/l;->a:Lcom/instagram/m/k;

    invoke-static {v3}, Lcom/instagram/m/k;->c(Lcom/instagram/m/k;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "experiments"

    const-string v3, ","

    iget-object v4, p0, Lcom/instagram/m/m;->a:Lcom/instagram/m/l;

    iget-object v4, v4, Lcom/instagram/m/l;->a:Lcom/instagram/m/k;

    invoke-static {v4}, Lcom/instagram/m/k;->b(Lcom/instagram/m/k;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 267
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-static {}, Lcom/instagram/m/k;->d()Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/k/a/d;

    invoke-virtual {v0}, Lcom/instagram/api/k/a/d;->k()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 273
    :cond_0
    return-void
.end method
