.class public Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;
.super Lcom/instagram/android/people/widget/PeopleTagsLayout;
.source "PeopleTagsInteractiveLayout.java"

# interfaces
.implements Lcom/instagram/model/people/c;


# instance fields
.field private b:Lcom/instagram/android/people/widget/c;

.field private c:Z

.field private d:Z

.field private e:Landroid/view/GestureDetector;

.field private f:Lcom/instagram/android/people/widget/f;

.field private g:Lcom/instagram/android/people/widget/c;

.field private h:Lcom/instagram/model/people/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    .line 26
    iput-boolean v3, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->c:Z

    .line 27
    iput-boolean v3, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->d:Z

    .line 29
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/people/widget/g;

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/people/widget/g;-><init>(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;B)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->e:Landroid/view/GestureDetector;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    .line 26
    iput-boolean v3, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->c:Z

    .line 27
    iput-boolean v3, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->d:Z

    .line 29
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/people/widget/g;

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/people/widget/g;-><init>(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;B)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->e:Landroid/view/GestureDetector;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/people/widget/PeopleTagsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    .line 26
    iput-boolean v3, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->c:Z

    .line 27
    iput-boolean v3, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->d:Z

    .line 29
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/people/widget/g;

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/people/widget/g;-><init>(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;B)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->e:Landroid/view/GestureDetector;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/c;)Lcom/instagram/android/people/widget/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    return-object p1
.end method

.method private a(Landroid/graphics/PointF;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f:Lcom/instagram/android/people/widget/f;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f:Lcom/instagram/android/people/widget/f;

    invoke-interface {v0}, Lcom/instagram/android/people/widget/f;->a()V

    .line 123
    :cond_0
    invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b(Landroid/graphics/PointF;)V

    .line 124
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Landroid/graphics/PointF;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/c;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/c;FF)V

    return-void
.end method

.method private a(Lcom/instagram/android/people/widget/c;FF)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/instagram/android/people/widget/c;->getAbsoluteTagPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 154
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, p2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p3

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v1}, Lcom/instagram/android/people/widget/c;->setPosition(Landroid/graphics/PointF;)V

    .line 158
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->a()V

    .line 160
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->invalidate()V

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->c()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->c:Z

    return p1
.end method

.method private b(Landroid/graphics/PointF;)V
    .locals 2
    .parameter

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->e()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a:Z

    .line 129
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/az;->people_tagging_default_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Ljava/lang/String;Landroid/graphics/PointF;)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    .line 132
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->addView(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f:Lcom/instagram/android/people/widget/f;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f:Lcom/instagram/android/people/widget/f;

    invoke-interface {v0, p1}, Lcom/instagram/android/people/widget/f;->a(Landroid/graphics/PointF;)V

    .line 136
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b(Lcom/instagram/android/people/widget/c;)V

    return-void
.end method

.method private b(Lcom/instagram/android/people/widget/c;)V
    .locals 3
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 83
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(I)Lcom/instagram/android/people/widget/c;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {v1}, Lcom/instagram/android/people/widget/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {v1}, Lcom/instagram/android/people/widget/c;->b()V

    .line 91
    :cond_0
    return-void

    .line 82
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/model/people/b;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->h:Lcom/instagram/model/people/b;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 94
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f80

    const v2, 0x3f4ccccd

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 96
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(I)Lcom/instagram/android/people/widget/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/instagram/android/people/widget/c;->a(Landroid/view/animation/Animation;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->d:Z

    return v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 102
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v0, 0x3f4ccccd

    const/high16 v2, 0x3f80

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 103
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 104
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(I)Lcom/instagram/android/people/widget/c;

    .line 106
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(I)Lcom/instagram/android/people/widget/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/instagram/android/people/widget/c;->b(Landroid/view/animation/Animation;)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->c:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a:Z

    .line 140
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->removeView(Landroid/view/View;)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    .line 142
    invoke-direct {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f()V

    .line 143
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f:Lcom/instagram/android/people/widget/f;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f:Lcom/instagram/android/people/widget/f;

    invoke-interface {v0}, Lcom/instagram/android/people/widget/f;->b()V

    .line 146
    :cond_0
    return-void
.end method

.method public final a(Lcom/instagram/model/people/PeopleTag;)V
    .locals 1
    .parameter

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->removeView(Landroid/view/View;)V

    .line 257
    return-void
.end method

.method public final a(Lcom/instagram/user/c/a;)V
    .locals 3
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->h:Lcom/instagram/model/people/b;

    new-instance v1, Lcom/instagram/model/people/PeopleTag;

    iget-object v2, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    invoke-virtual {v2}, Lcom/instagram/android/people/widget/c;->getNormalizedPosition()Landroid/graphics/PointF;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/instagram/model/people/PeopleTag;-><init>(Lcom/instagram/user/c/a;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v1}, Lcom/instagram/model/people/b;->a(Lcom/instagram/model/people/PeopleTag;)Z

    .line 115
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a()V

    .line 117
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->h:Lcom/instagram/model/people/b;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->h:Lcom/instagram/model/people/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/model/people/b;->a(Lcom/instagram/model/people/c;)V

    .line 184
    :cond_0
    return-void
.end method

.method public final b(Lcom/instagram/model/people/PeopleTag;)V
    .locals 1
    .parameter

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/model/people/PeopleTag;Z)Lcom/instagram/android/people/widget/c;

    .line 263
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 65
    instance-of v0, p1, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;

    .line 67
    .end local p1
    invoke-virtual {p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 68
    iget-object v0, p1, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;->a:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b(Landroid/graphics/PointF;)V

    .line 72
    :goto_0
    return-void

    .line 70
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    if-nez v1, :cond_0

    .line 60
    :goto_0
    return-object v0

    .line 58
    :cond_0
    new-instance v1, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;

    invoke-direct {v1, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 59
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getNormalizedPosition()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;->a:Landroid/graphics/PointF;

    move-object v0, v1

    .line 60
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f:Lcom/instagram/android/people/widget/f;

    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    invoke-virtual {v1}, Lcom/instagram/android/people/widget/c;->getNormalizedPosition()Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/android/people/widget/f;->b(Landroid/graphics/PointF;)V

    .line 172
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/model/people/PeopleTag;

    .line 174
    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    invoke-virtual {v1}, Lcom/instagram/android/people/widget/c;->getNormalizedPosition()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/model/people/PeopleTag;->a(Landroid/graphics/PointF;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->e:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setEditListener(Lcom/instagram/android/people/widget/f;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f:Lcom/instagram/android/people/widget/f;

    .line 150
    return-void
.end method

.method public final setPeopleTags$7d2216ca(Lcom/instagram/model/people/b;)V
    .locals 1
    .parameter "tags"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Ljava/util/List;Z)V

    .line 76
    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->h:Lcom/instagram/model/people/b;

    .line 77
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->h:Lcom/instagram/model/people/b;

    invoke-virtual {v0, p0}, Lcom/instagram/model/people/b;->a(Lcom/instagram/model/people/c;)V

    .line 78
    return-void
.end method
