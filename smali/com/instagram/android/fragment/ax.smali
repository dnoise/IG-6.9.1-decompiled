.class final Lcom/instagram/android/fragment/ax;
.super Lcom/instagram/common/a/a/j;
.source "FacebookAdvancedOptionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/android/c/b/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/aw;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/aw;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/instagram/android/fragment/ax;->a:Lcom/instagram/android/fragment/aw;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/android/c/b/h;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/instagram/android/fragment/ax;->a:Lcom/instagram/android/fragment/aw;

    invoke-virtual {p1}, Lcom/instagram/android/c/b/h;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/aw;->a(Lcom/instagram/android/fragment/aw;Ljava/util/List;)Ljava/util/List;

    .line 91
    iget-object v0, p0, Lcom/instagram/android/fragment/ax;->a:Lcom/instagram/android/fragment/aw;

    invoke-static {v0}, Lcom/instagram/android/fragment/aw;->a(Lcom/instagram/android/fragment/aw;)V

    .line 92
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/instagram/android/fragment/ax;->a:Lcom/instagram/android/fragment/aw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/aw;->a(Lcom/instagram/android/fragment/aw;Z)Z

    .line 80
    return-void
.end method

.method public final a(Lcom/instagram/common/l/a/e;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/android/c/b/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/instagram/android/fragment/ax;->a:Lcom/instagram/android/fragment/aw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/aw;->a(Lcom/instagram/android/fragment/aw;Z)Z

    .line 85
    iget-object v0, p0, Lcom/instagram/android/fragment/ax;->a:Lcom/instagram/android/fragment/aw;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/aw;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/a/f;->b()V

    .line 86
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    check-cast p1, Lcom/instagram/android/c/b/h;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ax;->a(Lcom/instagram/android/c/b/h;)V

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
            "Lcom/instagram/android/c/b/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/instagram/android/fragment/ax;->a:Lcom/instagram/android/fragment/aw;

    invoke-static {v0}, Lcom/instagram/android/fragment/aw;->b(Lcom/instagram/android/fragment/aw;)V

    .line 97
    return-void
.end method
