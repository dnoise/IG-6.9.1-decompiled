.class public final Lcom/instagram/android/k/a/k;
.super Lcom/instagram/android/a/a/b;
.source "UsernameSearchFilter.java"


# instance fields
.field private final a:Lcom/instagram/android/k/a/a;

.field private b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instagram/android/k/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/instagram/android/a/a/b;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/instagram/android/k/a/k;->a:Lcom/instagram/android/k/a/a;

    .line 26
    return-void
.end method

.method private a(Z)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/k/a/k;->b:Ljava/util/Collection;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 81
    :cond_0
    invoke-static {}, Lcom/instagram/android/j/f;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/k/a/k;->b:Ljava/util/Collection;

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/k/a/k;->b:Ljava/util/Collection;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/CharSequence;Lcom/android/internal/util/Predicate;)Ljava/util/Set;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/instagram/android/a/a/b;->a(Ljava/lang/CharSequence;Lcom/android/internal/util/Predicate;)Ljava/util/Set;

    move-result-object v0

    .line 70
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/instagram/android/k/a/k;->a(Z)Ljava/util/Collection;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/instagram/user/userservice/a/i;->a(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;Lcom/android/internal/util/Predicate;)V

    .line 76
    :cond_0
    return-object v0
.end method

.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .parameter "text"

    .prologue
    .line 30
    invoke-static {p1}, Lcom/instagram/common/y/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/android/k/a/k;->a(Z)Ljava/util/Collection;

    move-result-object v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    :cond_0
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 38
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 39
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    move-object v0, v1

    .line 43
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/instagram/android/a/a/b;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v0

    goto :goto_0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 48
    if-eqz p2, :cond_0

    .line 50
    iget-object v1, p0, Lcom/instagram/android/k/a/k;->a:Lcom/instagram/android/k/a/a;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/instagram/android/k/a/a;->c(Ljava/util/List;)V

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/instagram/android/k/a/k;->a:Lcom/instagram/android/k/a/a;

    instance-of v0, v0, Lcom/instagram/android/j/d;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/instagram/android/k/a/k;->a:Lcom/instagram/android/k/a/a;

    check-cast v0, Lcom/instagram/android/j/d;

    invoke-virtual {v0}, Lcom/instagram/android/j/d;->c()Lcom/instagram/android/j/e;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/j/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    iget-object v1, p0, Lcom/instagram/android/k/a/k;->a:Lcom/instagram/android/k/a/a;

    invoke-virtual {v1, v0}, Lcom/instagram/android/k/a/a;->d(Ljava/util/List;)V

    .line 60
    :cond_1
    return-void
.end method
