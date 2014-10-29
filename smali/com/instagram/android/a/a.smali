.class public final Lcom/instagram/android/a/a;
.super Lcom/instagram/ui/d/a;
.source "FilterHashTagsAndNamesAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field private a:Lcom/instagram/android/a/a/a;

.field private b:Lcom/instagram/feed/d/l;

.field private c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/instagram/android/a/a;->l:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/instagram/feed/d/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lcom/instagram/android/a/a;->b:Lcom/instagram/feed/d/l;

    .line 33
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-virtual {p0, p2}, Lcom/instagram/android/a/a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 65
    :pswitch_0
    invoke-static {p1}, Lcom/instagram/android/a/b/a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 67
    :pswitch_1
    invoke-static {p1}, Lcom/instagram/android/a/b/c;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0, p3}, Lcom/instagram/android/a/a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 76
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/b/b;

    iget-object v1, p0, Lcom/instagram/android/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/a/b/a;->a(Lcom/instagram/android/a/b/b;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/b/d;

    iget-object v1, p0, Lcom/instagram/android/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/user/c/a;

    invoke-static {v0, v1}, Lcom/instagram/android/a/b/c;->a(Lcom/instagram/android/a/b/d;Lcom/instagram/user/c/a;)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/instagram/android/a/a;->c:Ljava/util/ArrayList;

    .line 114
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/instagram/android/a/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/a/a;->a:Lcom/instagram/android/a/a/a;

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/instagram/android/a/a;->b:Lcom/instagram/feed/d/l;

    if-eqz v0, :cond_1

    .line 104
    new-instance v0, Lcom/instagram/android/a/a/a;

    iget-object v1, p0, Lcom/instagram/android/a/a;->b:Lcom/instagram/feed/d/l;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/a/a/a;-><init>(Lcom/instagram/android/a/a;Lcom/instagram/feed/d/l;)V

    iput-object v0, p0, Lcom/instagram/android/a/a;->a:Lcom/instagram/android/a/a/a;

    .line 109
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/a/a;->a:Lcom/instagram/android/a/a/a;

    return-object v0

    .line 106
    :cond_1
    new-instance v0, Lcom/instagram/android/a/a/a;

    invoke-direct {v0, p0}, Lcom/instagram/android/a/a/a;-><init>(Lcom/instagram/android/a/a;)V

    iput-object v0, p0, Lcom/instagram/android/a/a;->a:Lcom/instagram/android/a/a/a;

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/instagram/android/a/a;->getItemViewType(I)I

    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 50
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/instagram/android/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x2

    return v0
.end method
