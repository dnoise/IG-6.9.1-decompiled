.class public final Lcom/instagram/android/a/a/a;
.super Landroid/widget/Filter;
.source "HashtagAndUsernameCompositeFilter.java"


# instance fields
.field private a:Lcom/instagram/android/a/a/b;

.field private b:Lcom/instagram/android/a/a;


# direct methods
.method public constructor <init>(Lcom/instagram/android/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/instagram/android/a/a/a;->b:Lcom/instagram/android/a/a;

    .line 37
    new-instance v0, Lcom/instagram/android/a/a/b;

    invoke-direct {v0}, Lcom/instagram/android/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/a/a/a;->a:Lcom/instagram/android/a/a/b;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/instagram/android/a/a;Lcom/instagram/feed/d/l;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/instagram/android/a/a/a;->b:Lcom/instagram/android/a/a;

    .line 26
    invoke-static {}, Lcom/instagram/android/g/a/a;->a()Lcom/instagram/android/g/a/a;

    move-result-object v0

    .line 28
    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->ak()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/instagram/android/g/a/a;->b(Lcom/instagram/feed/d/l;)Ljava/util/Iterator;

    move-result-object v0

    .line 32
    :goto_0
    new-instance v1, Lcom/instagram/android/a/a/b;

    invoke-direct {v1, v0}, Lcom/instagram/android/a/a/b;-><init>(Ljava/util/Iterator;)V

    iput-object v1, p0, Lcom/instagram/android/a/a/a;->a:Lcom/instagram/android/a/a/b;

    .line 33
    return-void

    .line 28
    :cond_0
    invoke-virtual {v0, p2}, Lcom/instagram/android/g/a/a;->a(Lcom/instagram/feed/d/l;)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4
    .parameter "constraint"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 43
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 44
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/instagram/h/a/a;->a(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 47
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 48
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 49
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 55
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/instagram/android/a/a/a;->a:Lcom/instagram/android/a/a/b;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/a/b;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter
    .parameter "results"

    .prologue
    .line 60
    if-nez p2, :cond_0

    .line 70
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/a/a/a;->b:Lcom/instagram/android/a/a;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/instagram/android/a/a;->a(Ljava/util/ArrayList;)V

    .line 65
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/instagram/android/a/a/a;->b:Lcom/instagram/android/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/a/a;->notifyDataSetChanged()V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/a/a/a;->b:Lcom/instagram/android/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/a/a;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
