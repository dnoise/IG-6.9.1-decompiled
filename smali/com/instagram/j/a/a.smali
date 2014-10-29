.class public final Lcom/instagram/j/a/a;
.super Lcom/instagram/ui/d/a;
.source "NewsfeedAdapter.java"


# instance fields
.field private final a:Lcom/instagram/ui/menu/d;

.field private final b:Lcom/instagram/ui/menu/d;

.field private final c:Lcom/instagram/ui/menu/d;

.field private d:Landroid/support/v4/app/an;

.field private e:Lcom/instagram/j/a/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/j/a/a/a;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/instagram/ui/menu/d;

    sget v1, Lcom/facebook/az;->newsfeed_activity_header:I

    invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/j/a/a;->a:Lcom/instagram/ui/menu/d;

    .line 38
    new-instance v0, Lcom/instagram/ui/menu/d;

    sget v1, Lcom/facebook/az;->newsfeed_new_activity_header:I

    invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/j/a/a;->b:Lcom/instagram/ui/menu/d;

    .line 39
    new-instance v0, Lcom/instagram/ui/menu/d;

    sget v1, Lcom/facebook/az;->newsfeed_older_header:I

    invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/j/a/a;->c:Lcom/instagram/ui/menu/d;

    .line 49
    iput-object p2, p0, Lcom/instagram/j/a/a;->d:Landroid/support/v4/app/an;

    .line 50
    iput-object p3, p0, Lcom/instagram/j/a/a;->e:Lcom/instagram/j/a/a/a;

    .line 51
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-virtual {p0, p2}, Lcom/instagram/j/a/a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unhandled view type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_0
    invoke-static {p1, p3}, Lcom/instagram/ui/menu/n;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 72
    :pswitch_1
    invoke-static {p1}, Lcom/instagram/j/a/a/t;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 74
    :pswitch_2
    invoke-static {p1}, Lcom/instagram/j/a/a/i;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 76
    :pswitch_3
    invoke-static {p1}, Lcom/instagram/j/a/a/e;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 78
    :pswitch_4
    invoke-static {p1}, Lcom/instagram/j/a/a/m;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 80
    :pswitch_5
    invoke-static {p1}, Lcom/instagram/j/a/a/q;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 82
    :pswitch_6
    invoke-static {p1}, Lcom/instagram/j/a/a/b;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-virtual {p0, p3}, Lcom/instagram/j/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 92
    invoke-virtual {p0, p3}, Lcom/instagram/j/a/a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 141
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unhandled view type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/instagram/j/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/menu/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/instagram/ui/menu/n;->a(Landroid/view/View;Lcom/instagram/ui/menu/d;ZZ)V

    .line 139
    :goto_0
    return-void

    .line 101
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/a/a/u;

    check-cast v1, Lcom/instagram/j/d/c;

    invoke-static {v0, v1}, Lcom/instagram/j/a/a/t;->a(Lcom/instagram/j/a/a/u;Lcom/instagram/j/d/c;)V

    goto :goto_0

    .line 106
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/a/a/l;

    check-cast v1, Lcom/instagram/j/d/c;

    iget-object v2, p0, Lcom/instagram/j/a/a;->e:Lcom/instagram/j/a/a/a;

    invoke-static {p2, v0, v1, v2}, Lcom/instagram/j/a/a/i;->a(Landroid/content/Context;Lcom/instagram/j/a/a/l;Lcom/instagram/j/d/c;Lcom/instagram/j/a/a/a;)V

    goto :goto_0

    .line 113
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/a/a/h;

    check-cast v1, Lcom/instagram/j/d/c;

    iget-object v2, p0, Lcom/instagram/j/a/a;->e:Lcom/instagram/j/a/a/a;

    invoke-static {p2, v0, v1, v2}, Lcom/instagram/j/a/a/e;->a(Landroid/content/Context;Lcom/instagram/j/a/a/h;Lcom/instagram/j/d/c;Lcom/instagram/j/a/a/a;)V

    goto :goto_0

    .line 120
    :pswitch_4
    iget-object v2, p0, Lcom/instagram/j/a/a;->d:Landroid/support/v4/app/an;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/a/a/p;

    check-cast v1, Lcom/instagram/j/d/c;

    iget-object v3, p0, Lcom/instagram/j/a/a;->e:Lcom/instagram/j/a/a/a;

    invoke-static {p2, v2, v0, v1, v3}, Lcom/instagram/j/a/a/m;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/j/a/a/p;Lcom/instagram/j/d/c;Lcom/instagram/j/a/a/a;)V

    goto :goto_0

    .line 128
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/a/a/s;

    check-cast v1, Lcom/instagram/j/d/c;

    iget-object v2, p0, Lcom/instagram/j/a/a;->e:Lcom/instagram/j/a/a/a;

    invoke-static {p2, v0, v1, v2}, Lcom/instagram/j/a/a/q;->a(Landroid/content/Context;Lcom/instagram/j/a/a/s;Lcom/instagram/j/d/c;Lcom/instagram/j/a/a/a;)V

    goto :goto_0

    .line 135
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/a/a/d;

    check-cast v1, Lcom/instagram/j/d/c;

    iget-object v2, p0, Lcom/instagram/j/a/a;->e:Lcom/instagram/j/a/a/a;

    invoke-static {v0, v1, v2}, Lcom/instagram/j/a/a/b;->a(Lcom/instagram/j/a/a/d;Lcom/instagram/j/d/c;Lcom/instagram/j/a/a/a;)V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/instagram/j/a/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 188
    iget-object v0, p0, Lcom/instagram/j/a/a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    invoke-virtual {p0}, Lcom/instagram/j/a/a;->notifyDataSetChanged()V

    .line 190
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 198
    iget-object v2, p0, Lcom/instagram/j/a/a;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 200
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    move v4, v0

    .line 201
    :goto_0
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    move v3, v0

    .line 203
    :goto_1
    if-eqz p3, :cond_7

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v0

    .line 204
    :goto_2
    if-eqz p4, :cond_8

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 206
    :goto_3
    if-eqz v4, :cond_0

    .line 207
    iget-object v1, p0, Lcom/instagram/j/a/a;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 210
    :cond_0
    if-eqz v3, :cond_1

    .line 211
    iget-object v1, p0, Lcom/instagram/j/a/a;->k:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    :cond_1
    if-eqz v2, :cond_2

    .line 215
    iget-object v1, p0, Lcom/instagram/j/a/a;->k:Ljava/util/List;

    iget-object v4, p0, Lcom/instagram/j/a/a;->b:Lcom/instagram/ui/menu/d;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v1, p0, Lcom/instagram/j/a/a;->k:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
    :cond_2
    if-eqz v0, :cond_4

    .line 221
    if-eqz v2, :cond_9

    .line 222
    iget-object v0, p0, Lcom/instagram/j/a/a;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/j/a/a;->c:Lcom/instagram/ui/menu/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/instagram/j/a/a;->k:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 231
    :cond_4
    invoke-virtual {p0}, Lcom/instagram/j/a/a;->notifyDataSetChanged()V

    .line 232
    return-void

    :cond_5
    move v4, v1

    .line 200
    goto :goto_0

    :cond_6
    move v3, v1

    .line 201
    goto :goto_1

    :cond_7
    move v2, v1

    .line 203
    goto :goto_2

    :cond_8
    move v0, v1

    .line 204
    goto :goto_3

    .line 225
    :cond_9
    if-eqz v3, :cond_3

    .line 226
    iget-object v0, p0, Lcom/instagram/j/a/a;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/j/a/a;->a:Lcom/instagram/ui/menu/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 179
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/j/a/a;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/instagram/j/a/a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/instagram/j/a/a;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unsupported item view type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    invoke-virtual {p0, p1}, Lcom/instagram/j/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 153
    instance-of v1, v0, Lcom/instagram/ui/menu/d;

    if-eqz v1, :cond_1

    .line 154
    const/4 v0, 0x6

    .line 168
    :goto_0
    return v0

    .line 155
    :cond_1
    instance-of v1, v0, Lcom/instagram/j/d/c;

    if-eqz v1, :cond_2

    .line 156
    sget-object v1, Lcom/instagram/j/a/b;->a:[I

    check-cast v0, Lcom/instagram/j/d/c;

    invoke-virtual {v0}, Lcom/instagram/j/d/c;->a()Lcom/instagram/j/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/j/d/g;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 170
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unsupported item view type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 164
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 166
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 168
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 173
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Unsupported item view type"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x7

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/instagram/j/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/ui/menu/d;

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
