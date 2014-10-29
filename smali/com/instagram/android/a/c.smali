.class final Lcom/instagram/android/a/c;
.super Landroid/widget/Filter;
.source "HashtagListAdapter.java"


# instance fields
.field private final a:Lcom/instagram/android/a/b;


# direct methods
.method public constructor <init>(Lcom/instagram/android/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/instagram/android/a/c;->a:Lcom/instagram/android/a/b;

    .line 69
    return-void
.end method

.method private static a(Landroid/widget/Filter$FilterResults;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Filter$FilterResults;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    new-instance v3, Lcom/instagram/android/g/c;

    invoke-direct {v3, v0}, Lcom/instagram/android/g/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2
    .parameter "text"

    .prologue
    .line 73
    invoke-static {p1}, Lcom/instagram/common/y/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/instagram/android/j/c;->a()Ljava/util/List;

    move-result-object v0

    .line 79
    :goto_0
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 80
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 82
    return-object v1

    .line 75
    :cond_0
    invoke-static {v0}, Lcom/instagram/h/a/a;->a(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter
    .parameter "results"

    .prologue
    .line 87
    if-nez p2, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/a/c;->a:Lcom/instagram/android/a/b;

    invoke-static {p2}, Lcom/instagram/android/a/c;->a(Landroid/widget/Filter$FilterResults;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/b;->c(Ljava/util/List;)V

    goto :goto_0
.end method
