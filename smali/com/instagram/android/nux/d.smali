.class final Lcom/instagram/android/nux/d;
.super Lcom/instagram/common/a/a/j;
.source "FacebookHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/android/nux/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/nux/a;


# direct methods
.method private constructor <init>(Lcom/instagram/android/nux/a;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/instagram/android/nux/d;->a:Lcom/instagram/android/nux/a;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/nux/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/instagram/android/nux/d;-><init>(Lcom/instagram/android/nux/a;)V

    return-void
.end method

.method private a(Lcom/instagram/android/nux/j;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/instagram/android/nux/d;->a:Lcom/instagram/android/nux/a;

    invoke-static {v0}, Lcom/instagram/android/nux/a;->c(Lcom/instagram/android/nux/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/instagram/android/nux/d;->a:Lcom/instagram/android/nux/a;

    invoke-static {v0}, Lcom/instagram/android/nux/a;->d(Lcom/instagram/android/nux/a;)Lcom/instagram/android/nux/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/instagram/android/nux/e;->a(Lcom/instagram/android/nux/j;)V

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/instagram/android/nux/d;->a:Lcom/instagram/android/nux/a;

    invoke-static {v0}, Lcom/instagram/android/nux/a;->a(Lcom/instagram/android/nux/a;)V

    .line 48
    return-void
.end method

.method public final a(Lcom/instagram/common/l/a/e;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/android/nux/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/nux/d;->a:Lcom/instagram/android/nux/a;

    invoke-static {v0}, Lcom/instagram/android/nux/a;->b(Lcom/instagram/android/nux/a;)V

    .line 53
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    check-cast p1, Lcom/instagram/android/nux/j;

    invoke-direct {p0, p1}, Lcom/instagram/android/nux/d;->a(Lcom/instagram/android/nux/j;)V

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
            "Lcom/instagram/android/nux/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/android/nux/d;->a:Lcom/instagram/android/nux/a;

    invoke-static {v0}, Lcom/instagram/android/nux/a;->e(Lcom/instagram/android/nux/a;)V

    .line 65
    return-void
.end method
