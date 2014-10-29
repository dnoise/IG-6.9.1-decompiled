.class final Lcom/instagram/android/directshare/e/n;
.super Lcom/instagram/api/j/a;
.source "RequestedDirectSharesFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/instagram/f/c/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/e/b;


# direct methods
.method private constructor <init>(Lcom/instagram/android/directshare/e/b;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/instagram/android/directshare/e/n;->a:Lcom/instagram/android/directshare/e/b;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/directshare/e/b;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/e/n;-><init>(Lcom/instagram/android/directshare/e/b;)V

    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/f/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {p0}, Lcom/instagram/android/directshare/c/x;->a(Ljava/util/List;)V

    .line 278
    invoke-static {p0}, Lcom/instagram/android/directshare/a/a;->b(Ljava/util/List;)V

    .line 279
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 267
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/instagram/android/directshare/e/n;->a:Lcom/instagram/android/directshare/e/b;

    invoke-virtual {v1}, Lcom/instagram/android/directshare/e/b;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    .line 268
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/instagram/android/directshare/e/n;->a(Ljava/util/List;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 272
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/android/directshare/e/n;->a:Lcom/instagram/android/directshare/e/b;

    invoke-virtual {v1}, Lcom/instagram/android/directshare/e/b;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    .line 273
    return-void
.end method
