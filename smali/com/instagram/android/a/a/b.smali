.class public Lcom/instagram/android/a/a/b;
.super Landroid/widget/Filter;
.source "UsernameAutoCompleteFilter.java"


# instance fields
.field private final a:Lcom/instagram/user/userservice/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 34
    new-instance v0, Lcom/instagram/user/userservice/d;

    invoke-direct {v0}, Lcom/instagram/user/userservice/d;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/a/a/b;->a:Lcom/instagram/user/userservice/d;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 34
    new-instance v0, Lcom/instagram/user/userservice/d;

    invoke-direct {v0}, Lcom/instagram/user/userservice/d;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/a/a/b;->a:Lcom/instagram/user/userservice/d;

    .line 41
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/instagram/android/a/a/b;->a:Lcom/instagram/user/userservice/d;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    invoke-virtual {v1, v0}, Lcom/instagram/user/userservice/d;->a(Lcom/instagram/user/c/a;)V

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/CharSequence;Lcom/android/internal/util/Predicate;)Ljava/util/Set;
    .locals 2
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
    .line 72
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/instagram/common/l/a/f;->a(Z)V

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 76
    invoke-static {p1, v0, p2}, Lcom/instagram/user/userservice/a/h;->a(Ljava/lang/CharSequence;Ljava/util/Set;Lcom/android/internal/util/Predicate;)V

    .line 77
    iget-object v1, p0, Lcom/instagram/android/a/a/b;->a:Lcom/instagram/user/userservice/d;

    invoke-virtual {v1, p1, v0, p2}, Lcom/instagram/user/userservice/d;->a(Ljava/lang/CharSequence;Ljava/util/Set;Lcom/android/internal/util/Predicate;)V

    .line 79
    return-object v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .parameter "text"

    .prologue
    .line 48
    invoke-static {p1}, Lcom/instagram/common/y/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    :goto_0
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 55
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 57
    return-object v1

    .line 50
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/instagram/android/a/a/b;->a(Ljava/lang/CharSequence;Lcom/android/internal/util/Predicate;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    return-void
.end method
