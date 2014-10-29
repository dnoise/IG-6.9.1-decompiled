.class public final Lcom/instagram/ui/menu/r;
.super Lcom/instagram/ui/d/a;
.source "SimplePreferenceAdapter.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/ui/menu/d;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/ui/menu/i;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p0, p2}, Lcom/instagram/ui/menu/r;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 57
    invoke-static {p1}, Lcom/instagram/ui/menu/p;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 58
    iget-boolean v1, p0, Lcom/instagram/ui/menu/r;->a:Z

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 39
    :pswitch_0
    invoke-static {p1, p3}, Lcom/instagram/ui/menu/n;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_1
    invoke-static {p1, p3}, Lcom/instagram/ui/menu/n;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/at;->menu_separator_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->b(Landroid/view/View;I)V

    goto :goto_0

    .line 46
    :pswitch_2
    invoke-static {p1, p3}, Lcom/instagram/ui/menu/y;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 48
    :pswitch_3
    invoke-static {p1, p3}, Lcom/instagram/ui/menu/u;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_4
    invoke-static {p1}, Lcom/instagram/ui/menu/l;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_5
    invoke-static {p1, p3}, Lcom/instagram/ui/menu/j;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 54
    :pswitch_6
    invoke-static {p1}, Lcom/instagram/ui/menu/s;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 67
    invoke-virtual {p0, p3}, Lcom/instagram/ui/menu/r;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 91
    invoke-virtual {p0, p3}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/menu/f;

    iget-boolean v3, p0, Lcom/instagram/ui/menu/r;->b:Z

    if-eqz v3, :cond_1

    if-nez p3, :cond_1

    move v3, v2

    :goto_0
    iget-boolean v4, p0, Lcom/instagram/ui/menu/r;->c:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/instagram/ui/menu/r;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p3, v4, :cond_2

    :goto_1
    invoke-static {p1, v0, v3, v2}, Lcom/instagram/ui/menu/p;->a(Landroid/view/View;Lcom/instagram/ui/menu/f;ZZ)V

    .line 99
    :goto_2
    :pswitch_0
    return-void

    .line 69
    :pswitch_1
    invoke-virtual {p0, p3}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/menu/d;

    if-eqz p3, :cond_0

    move v1, v2

    :cond_0
    invoke-static {p1, v0, v1, v2}, Lcom/instagram/ui/menu/n;->a(Landroid/view/View;Lcom/instagram/ui/menu/d;ZZ)V

    goto :goto_2

    .line 72
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/menu/z;

    invoke-virtual {p0, p3}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/ui/menu/ab;

    invoke-static {v0, v1}, Lcom/instagram/ui/menu/y;->a(Lcom/instagram/ui/menu/z;Lcom/instagram/ui/menu/ab;)V

    goto :goto_2

    .line 79
    :pswitch_3
    invoke-virtual {p0, p3}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/menu/aa;

    invoke-static {p1, v0}, Lcom/instagram/ui/menu/u;->a(Landroid/view/View;Lcom/instagram/ui/menu/aa;)V

    goto :goto_2

    .line 82
    :pswitch_4
    invoke-virtual {p0, p3}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/menu/b;

    invoke-static {p1, v0}, Lcom/instagram/ui/menu/l;->a(Landroid/view/View;Lcom/instagram/ui/menu/b;)V

    goto :goto_2

    .line 85
    :pswitch_5
    invoke-virtual {p0, p3}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/menu/a;

    invoke-static {p1, v0}, Lcom/instagram/ui/menu/j;->a(Landroid/view/View;Lcom/instagram/ui/menu/a;)V

    goto :goto_2

    .line 88
    :pswitch_6
    invoke-virtual {p0, p3}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/menu/g;

    invoke-static {p1, p2, v0}, Lcom/instagram/ui/menu/s;->a(Landroid/view/View;Landroid/content/Context;Lcom/instagram/ui/menu/g;)V

    goto :goto_2

    :cond_1
    move v3, v1

    .line 91
    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/instagram/ui/menu/r;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    iget-object v0, p0, Lcom/instagram/ui/menu/r;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    invoke-virtual {p0}, Lcom/instagram/ui/menu/r;->notifyDataSetChanged()V

    .line 137
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/instagram/ui/menu/r;->b:Z

    .line 116
    return-void
.end method

.method public final a([Ljava/lang/CharSequence;)V
    .locals 5
    .parameter

    .prologue
    .line 126
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 127
    iget-object v3, p0, Lcom/instagram/ui/menu/r;->k:Ljava/util/List;

    new-instance v4, Lcom/instagram/ui/menu/f;

    invoke-direct {v4, v2}, Lcom/instagram/ui/menu/f;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/menu/r;->a:Z

    .line 130
    invoke-virtual {p0}, Lcom/instagram/ui/menu/r;->notifyDataSetChanged()V

    .line 131
    return-void
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/instagram/ui/menu/r;->c:Z

    .line 123
    return-void
.end method

.method public final getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/ui/menu/d;

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    .line 148
    :cond_0
    invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/ui/menu/i;

    if-eqz v0, :cond_1

    .line 149
    const/4 v0, 0x3

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/ui/menu/ab;

    if-eqz v0, :cond_2

    .line 151
    const/4 v0, 0x2

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/ui/menu/aa;

    if-eqz v0, :cond_3

    .line 153
    const/4 v0, 0x4

    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/ui/menu/b;

    if-eqz v0, :cond_4

    .line 155
    const/4 v0, 0x5

    goto :goto_0

    .line 156
    :cond_4
    invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/ui/menu/a;

    if-eqz v0, :cond_5

    .line 157
    const/4 v0, 0x6

    goto :goto_0

    .line 158
    :cond_5
    invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/ui/menu/g;

    if-eqz v0, :cond_6

    .line 159
    const/4 v0, 0x7

    goto :goto_0

    .line 161
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 141
    const/16 v0, 0x8

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/instagram/ui/menu/r;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/ui/menu/ab;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
