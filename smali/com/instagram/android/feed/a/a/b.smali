.class public final Lcom/instagram/android/feed/a/a/b;
.super Ljava/lang/Object;
.source "FeedItemViewableHelper.java"

# interfaces
.implements Lcom/instagram/feed/h/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/feed/h/d",
        "<",
        "Lcom/instagram/feed/d/l;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instagram/android/feed/a/a;

.field private final b:Landroid/os/Handler;

.field private final c:I

.field private final d:Z

.field private final e:Lcom/instagram/feed/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/feed/h/a",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/android/feed/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/Rect;

.field private final i:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/instagram/android/feed/a/a;Landroid/util/DisplayMetrics;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/instagram/feed/h/a;

    invoke-direct {v0, p0}, Lcom/instagram/feed/h/a;-><init>(Lcom/instagram/feed/h/d;)V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/b;->e:Lcom/instagram/feed/h/a;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/b;->f:Ljava/util/Set;

    .line 159
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/b;->g:Landroid/graphics/Rect;

    .line 160
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/b;->h:Landroid/graphics/Rect;

    .line 161
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/b;->i:Landroid/graphics/Rect;

    .line 37
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/b;->b:Landroid/os/Handler;

    .line 39
    const/high16 v0, 0x4320

    iget v1, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/instagram/android/feed/a/a/b;->c:I

    .line 40
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->c()Lcom/instagram/android/fragment/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->an()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/feed/a/a/b;->d:Z

    .line 41
    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/b;->g:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v2}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v3}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 170
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/b;->h:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 176
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/b;->i:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/b;->g:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/b;->h:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 178
    if-nez v1, :cond_0

    .line 182
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->i:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/b;->i:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/a/b;)Lcom/instagram/android/feed/a/a;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;

    return-object v0
.end method

.method private a(Lcom/instagram/feed/d/l;)V
    .locals 2
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/a/d;

    .line 125
    invoke-interface {v0, p1}, Lcom/instagram/android/feed/a/a/d;->a(Lcom/instagram/feed/d/l;)V

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method private a(Lcom/instagram/feed/d/l;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/a/d;

    .line 118
    invoke-interface {v0, p1, p2}, Lcom/instagram/android/feed/a/a/d;->a(Lcom/instagram/feed/d/l;I)V

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method private a(I)Z
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0, p1}, Lcom/instagram/android/feed/a/a;->c(I)Landroid/view/View;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/a/a/b;->a(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/instagram/android/feed/a/a/b;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/feed/a/a/b;)Lcom/instagram/feed/h/a;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->e:Lcom/instagram/feed/h/a;

    return-object v0
.end method

.method private b(Lcom/instagram/feed/d/l;)V
    .locals 2
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/a/d;

    .line 139
    invoke-interface {v0, p1}, Lcom/instagram/android/feed/a/a/d;->b(Lcom/instagram/feed/d/l;)V

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method private b(Lcom/instagram/feed/d/l;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/a/d;

    .line 132
    invoke-interface {v0, p1, p2}, Lcom/instagram/android/feed/a/a/d;->b(Lcom/instagram/feed/d/l;I)V

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method private b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 144
    packed-switch p1, :pswitch_data_0

    .line 151
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 147
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :pswitch_2
    iget-boolean v0, p0, Lcom/instagram/android/feed/a/a/b;->d:Z

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static c(I)Z
    .locals 1
    .parameter

    .prologue
    .line 156
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->c()Lcom/instagram/android/fragment/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->e:Lcom/instagram/feed/h/a;

    invoke-virtual {v0}, Lcom/instagram/feed/h/a;->a()V

    goto :goto_0
.end method

.method public final a(Lcom/instagram/android/feed/a/a/d;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public final a(Lcom/instagram/feed/h/e;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/feed/h/e",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;

    move-result-object v3

    .line 84
    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 85
    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    move v2, v0

    .line 86
    :goto_0
    if-gt v2, v4, :cond_2

    .line 87
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 88
    invoke-direct {p0, v1}, Lcom/instagram/android/feed/a/a/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v5, v2, v0

    .line 90
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0, v5}, Lcom/instagram/android/feed/a/a;->g(I)Ljava/util/List;

    move-result-object v6

    .line 93
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 94
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    .line 95
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v7

    mul-int/lit8 v8, v5, 0x3

    add-int/2addr v8, v1

    invoke-interface {p1, v7, v0, v8}, Lcom/instagram/feed/h/e;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 93
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0, v5}, Lcom/instagram/android/feed/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    .line 100
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-interface {p1, v6, v0, v5}, Lcom/instagram/feed/h/e;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 103
    invoke-static {v1}, Lcom/instagram/android/feed/a/a/b;->c(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v5}, Lcom/instagram/android/feed/a/a/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-interface {p1, v6, v0, v5}, Lcom/instagram/feed/h/e;->b(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 86
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 109
    :cond_2
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/instagram/feed/d/l;

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/b;->b(Lcom/instagram/feed/d/l;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/instagram/feed/d/l;

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/a/a/b;->b(Lcom/instagram/feed/d/l;I)V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/feed/a/a/c;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/a/a/c;-><init>(Lcom/instagram/android/feed/a/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/instagram/feed/d/l;

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/b;->a(Lcom/instagram/feed/d/l;)V

    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/instagram/feed/d/l;

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/a/a/b;->a(Lcom/instagram/feed/d/l;I)V

    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/b;->b()V

    .line 69
    return-void
.end method
