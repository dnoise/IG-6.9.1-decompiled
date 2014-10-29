.class final Lcom/instagram/android/fragment/ei;
.super Lcom/instagram/api/j/f;
.source "SearchTagsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/f",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/android/g/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/eh;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/eh;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/instagram/android/fragment/ei;->a:Lcom/instagram/android/fragment/eh;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/g/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/android/fragment/ei;->a:Lcom/instagram/android/fragment/eh;

    invoke-static {v0}, Lcom/instagram/android/fragment/eh;->a(Lcom/instagram/android/fragment/eh;)Lcom/instagram/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/a/b;->d(Ljava/util/List;)V

    .line 36
    iget-object v0, p0, Lcom/instagram/android/fragment/ei;->a:Lcom/instagram/android/fragment/eh;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/eh;->Z()V

    .line 37
    iget-object v0, p0, Lcom/instagram/android/fragment/ei;->a:Lcom/instagram/android/fragment/eh;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/eh;->aa()V

    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 42
    iget-object v0, p0, Lcom/instagram/android/fragment/ei;->a:Lcom/instagram/android/fragment/eh;

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/eh;->d(Z)V

    .line 43
    iget-object v0, p0, Lcom/instagram/android/fragment/ei;->a:Lcom/instagram/android/fragment/eh;

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/eh;->c(Z)V

    .line 44
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ei;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lcom/instagram/android/fragment/ei;->a:Lcom/instagram/android/fragment/eh;

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/eh;->d(Z)V

    .line 49
    iget-object v0, p0, Lcom/instagram/android/fragment/ei;->a:Lcom/instagram/android/fragment/eh;

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/eh;->c(Z)V

    .line 50
    return-void
.end method
