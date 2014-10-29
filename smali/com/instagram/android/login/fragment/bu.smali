.class final Lcom/instagram/android/login/fragment/bu;
.super Lcom/instagram/common/a/a/j;
.source "RegisterFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/android/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .locals 0
    .parameter

    .prologue
    .line 1334
    iput-object p1, p0, Lcom/instagram/android/login/fragment/bu;->a:Lcom/instagram/android/login/fragment/an;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/an;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1334
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/bu;-><init>(Lcom/instagram/android/login/fragment/an;)V

    return-void
.end method

.method private a(Lcom/instagram/android/g/e;)V
    .locals 7
    .parameter

    .prologue
    .line 1339
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Ljava/lang/Object;)V

    .line 1340
    iget-object v6, p0, Lcom/instagram/android/login/fragment/bu;->a:Lcom/instagram/android/login/fragment/an;

    new-instance v0, Lcom/instagram/quicksand/a;

    invoke-virtual {p1}, Lcom/instagram/android/g/e;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/android/g/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/instagram/android/g/e;->d()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/instagram/android/g/e;->c()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/instagram/android/g/e;->e()Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/instagram/quicksand/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-static {v6, v0}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;Lcom/instagram/quicksand/a;)Lcom/instagram/quicksand/a;

    .line 1347
    invoke-static {}, Lcom/instagram/common/y/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/bu;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->D(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/quicksand/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1348
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1334
    check-cast p1, Lcom/instagram/android/g/e;

    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/bu;->a(Lcom/instagram/android/g/e;)V

    return-void
.end method

.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/android/g/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1352
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->b(Lcom/instagram/common/l/a/e;)V

    .line 1353
    invoke-static {}, Lcom/instagram/android/login/fragment/an;->V()I

    move-result v0

    if-lez v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/instagram/android/login/fragment/bu;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->E(Lcom/instagram/android/login/fragment/an;)V

    .line 1356
    :cond_0
    return-void
.end method
