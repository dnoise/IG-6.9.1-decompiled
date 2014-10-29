.class final Lcom/instagram/android/people/widget/g;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PeopleTagsInteractiveLayout.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;


# direct methods
.method private constructor <init>(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/g;-><init>(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)V

    return-void
.end method

.method private a(II)Lcom/instagram/android/people/widget/c;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(I)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/instagram/android/people/widget/c;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    :goto_1
    return-object v0

    .line 244
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 250
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 190
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/instagram/android/people/widget/g;->a(II)Lcom/instagram/android/people/widget/c;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/c;)Lcom/instagram/android/people/widget/c;

    .line 191
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->bringToFront()V

    .line 193
    iget-object v2, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->d()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Z)Z

    .line 194
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iget-object v2, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v2}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/instagram/android/people/widget/c;->b(II)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Z)Z

    .line 198
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iget-object v2, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iget-object v3, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v3}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(I)Lcom/instagram/android/people/widget/c;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/c;)Lcom/instagram/android/people/widget/c;

    .line 199
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->invalidate()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)V

    .line 202
    return v1

    .line 193
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter
    .parameter
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iget-object v1, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v1

    invoke-static {v0, v1, p3, p4}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/c;FF)V

    .line 239
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x1

    .line 208
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->c(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a()V

    .line 231
    :cond_0
    :goto_0
    return v5

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    if-nez v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->d(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/model/people/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/model/people/b;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 215
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v3}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v4}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->people_tagging_add_people_limit_reached:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->e(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->d(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/model/people/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/people/widget/c;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/model/people/b;->remove(Ljava/lang/Object;)Z

    .line 227
    :cond_4
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->b()V

    goto :goto_0
.end method
