.class public final Lcom/instagram/android/directshare/widget/h;
.super Lcom/instagram/android/a/a/b;
.source "DirectShareSearchFilter.java"


# instance fields
.field private final a:Lcom/instagram/android/directshare/widget/i;


# direct methods
.method public constructor <init>(Lcom/instagram/android/directshare/widget/i;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/instagram/android/a/a/b;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/instagram/android/directshare/widget/h;->a:Lcom/instagram/android/directshare/widget/i;

    .line 17
    return-void
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .parameter "text"

    .prologue
    .line 21
    invoke-static {p1}, Lcom/instagram/common/y/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 24
    iget-object v1, p0, Lcom/instagram/android/directshare/widget/h;->a:Lcom/instagram/android/directshare/widget/i;

    invoke-virtual {v1}, Lcom/instagram/android/directshare/widget/i;->c()Ljava/util/List;

    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 26
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 30
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/android/a/a/b;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v0

    goto :goto_0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 35
    invoke-static {p1}, Lcom/instagram/common/y/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/h;->a:Lcom/instagram/android/directshare/widget/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/i;->a(Z)V

    .line 43
    :goto_0
    if-eqz p2, :cond_0

    .line 45
    iget-object v1, p0, Lcom/instagram/android/directshare/widget/h;->a:Lcom/instagram/android/directshare/widget/i;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/instagram/android/directshare/widget/i;->c(Ljava/util/List;)V

    .line 47
    :cond_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/h;->a:Lcom/instagram/android/directshare/widget/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/i;->a(Z)V

    goto :goto_0
.end method
