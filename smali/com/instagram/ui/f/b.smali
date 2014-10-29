.class public final Lcom/instagram/ui/f/b;
.super Ljava/lang/Object;
.source "PopupWindowController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/instagram/ui/f/f;

.field private final c:Landroid/widget/PopupWindow;

.field private d:I

.field private e:I

.field private f:Lcom/instagram/ui/f/e;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/instagram/ui/f/f;Landroid/widget/PopupWindow;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;

    .line 47
    iput-object p2, p0, Lcom/instagram/ui/f/b;->b:Lcom/instagram/ui/f/f;

    .line 48
    iput-object p3, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 58
    iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/instagram/ui/f/c;

    invoke-direct {v1, p0}, Lcom/instagram/ui/f/c;-><init>(Lcom/instagram/ui/f/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 71
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instagram/ui/f/b;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private static a(IILandroid/util/DisplayMetrics;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 219
    if-ltz p0, :cond_0

    iget v1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le p0, v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 224
    :cond_1
    if-ltz p1, :cond_0

    iget v1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt p1, v1, :cond_0

    .line 229
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/ui/f/b;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/instagram/ui/f/b;->e()V

    return-void
.end method

.method private d()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/ui/f/b;->f:Lcom/instagram/ui/f/e;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 115
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private e()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 129
    iget-object v1, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 130
    iget-object v1, p0, Lcom/instagram/ui/f/b;->b:Lcom/instagram/ui/f/f;

    invoke-interface {v1}, Lcom/instagram/ui/f/f;->a()[I

    move-result-object v4

    .line 132
    iget-object v1, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 133
    iget-object v1, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 213
    :goto_0
    return-void

    .line 139
    :cond_1
    aget v1, v4, v2

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v1, v5, :cond_2

    aget v1, v4, v9

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v5, :cond_3

    .line 140
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t fit popup"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_3
    aget v5, v0, v2

    .line 144
    aget v0, v0, v9

    .line 145
    iget-object v1, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int v6, v5, v1

    .line 146
    iget-object v1, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 149
    invoke-static {v5, v0, v3}, Lcom/instagram/ui/f/b;->a(IILandroid/util/DisplayMetrics;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v5, v1, v3}, Lcom/instagram/ui/f/b;->a(IILandroid/util/DisplayMetrics;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6, v0, v3}, Lcom/instagram/ui/f/b;->a(IILandroid/util/DisplayMetrics;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6, v1, v3}, Lcom/instagram/ui/f/b;->a(IILandroid/util/DisplayMetrics;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 154
    iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 161
    :cond_4
    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v7, v1

    aget v8, v4, v9

    if-le v7, v8, :cond_7

    .line 164
    sget v0, Lcom/instagram/ui/f/g;->b:I

    .line 169
    :goto_1
    iget-object v7, p0, Lcom/instagram/ui/f/b;->b:Lcom/instagram/ui/f/f;

    add-int/lit8 v7, v1, 0x0

    .line 172
    add-int v1, v5, v6

    div-int/lit8 v1, v1, 0x2

    .line 173
    aget v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    .line 175
    if-gez v5, :cond_8

    .line 176
    iget-object v1, p0, Lcom/instagram/ui/f/b;->b:Lcom/instagram/ui/f/f;

    invoke-interface {v1}, Lcom/instagram/ui/f/f;->b()I

    move-result v1

    neg-int v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 182
    :goto_2
    sub-int v3, v5, v1

    .line 185
    iget v5, p0, Lcom/instagram/ui/f/b;->d:I

    .line 186
    iget v5, p0, Lcom/instagram/ui/f/b;->e:I

    .line 188
    iput v0, p0, Lcom/instagram/ui/f/b;->d:I

    .line 189
    iput v1, p0, Lcom/instagram/ui/f/b;->e:I

    .line 192
    iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/instagram/ui/f/b;->b:Lcom/instagram/ui/f/f;

    iget v5, p0, Lcom/instagram/ui/f/b;->d:I

    iget v6, p0, Lcom/instagram/ui/f/b;->e:I

    invoke-interface {v1, v5, v6}, Lcom/instagram/ui/f/f;->a(II)Landroid/view/View;

    move-result-object v1

    .line 196
    if-eq v1, v0, :cond_6

    .line 197
    iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 200
    iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 206
    :cond_6
    iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 207
    iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;

    aget v1, v4, v2

    aget v2, v4, v9

    invoke-virtual {v0, v3, v7, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0

    .line 166
    :cond_7
    aget v1, v4, v9

    sub-int v1, v0, v1

    .line 167
    sget v0, Lcom/instagram/ui/f/g;->a:I

    goto :goto_1

    .line 177
    :cond_8
    aget v1, v4, v2

    add-int/2addr v1, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v6, :cond_a

    .line 178
    aget v1, v4, v2

    add-int/2addr v1, v5

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/instagram/ui/f/b;->b:Lcom/instagram/ui/f/f;

    invoke-interface {v3}, Lcom/instagram/ui/f/f;->b()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 209
    :cond_9
    iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;

    aget v1, v4, v2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 210
    iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;

    aget v1, v4, v9

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 211
    iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    :cond_a
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 77
    new-instance v0, Lcom/instagram/ui/f/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/ui/f/e;-><init>(Lcom/instagram/ui/f/b;B)V

    iput-object v0, p0, Lcom/instagram/ui/f/b;->f:Lcom/instagram/ui/f/e;

    .line 78
    iget-object v0, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/ui/f/b;->f:Lcom/instagram/ui/f/e;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 84
    invoke-direct {p0}, Lcom/instagram/ui/f/b;->e()V

    .line 85
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/instagram/ui/f/b;->d()V

    .line 98
    new-instance v0, Lcom/instagram/ui/f/d;

    invoke-direct {v0, p0}, Lcom/instagram/ui/f/d;-><init>(Lcom/instagram/ui/f/b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/instagram/ui/f/b;->d()V

    .line 89
    iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 90
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 244
    invoke-virtual {p0}, Lcom/instagram/ui/f/b;->b()V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/ui/f/b;->a()V

    goto :goto_0
.end method

.method public final onGlobalLayout()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/instagram/ui/f/b;->e()V

    .line 120
    return-void
.end method

.method public final onScrollChanged()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/instagram/ui/f/b;->e()V

    .line 125
    return-void
.end method
