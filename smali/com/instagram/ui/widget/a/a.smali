.class public final Lcom/instagram/ui/widget/a/a;
.super Ljava/lang/Object;
.source "CustomToastPopupWindow.java"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/view/View;

.field private final c:I

.field private d:Landroid/widget/PopupWindow;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/ui/widget/a/a;->a:Landroid/os/Handler;

    .line 25
    iput-object p1, p0, Lcom/instagram/ui/widget/a/a;->b:Landroid/view/View;

    .line 26
    iput p2, p0, Lcom/instagram/ui/widget/a/a;->c:I

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/instagram/ui/widget/a/a;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->e:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 123
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/instagram/ui/widget/a/a;->d:Landroid/widget/PopupWindow;

    .line 126
    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->d:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 127
    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->d:Landroid/widget/PopupWindow;

    sget v1, Lcom/facebook/ba;->CustomToast_Fade:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 130
    iget-object v1, p0, Lcom/instagram/ui/widget/a/a;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    float-to-int v1, v1

    .line 133
    iget-object v2, p0, Lcom/instagram/ui/widget/a/a;->d:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/instagram/ui/widget/a/a;->b:Landroid/view/View;

    const/16 v4, 0x51

    const/4 v5, 0x0

    aget v0, v0, v5

    iget-object v5, p0, Lcom/instagram/ui/widget/a/a;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    iget v5, p0, Lcom/instagram/ui/widget/a/a;->c:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    iget-object v5, p0, Lcom/instagram/ui/widget/a/a;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v1, v5, v1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 139
    return-void
.end method

.method private static a(Lcom/instagram/ui/widget/a/d;IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/instagram/ui/widget/a/d;->a(IIII)V

    .line 116
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/ui/widget/a/d;->measure(II)V

    .line 120
    return-void
.end method

.method private b()Lcom/instagram/ui/widget/a/d;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/instagram/ui/widget/a/d;

    iget-object v1, p0, Lcom/instagram/ui/widget/a/a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/widget/a/d;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v1, Lcom/instagram/ui/widget/a/c;

    invoke-direct {v1, p0}, Lcom/instagram/ui/widget/a/c;-><init>(Lcom/instagram/ui/widget/a/a;)V

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/a/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->d:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 63
    :cond_0
    iput-object v1, p0, Lcom/instagram/ui/widget/a/a;->d:Landroid/widget/PopupWindow;

    .line 64
    return-void
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->d:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 76
    if-nez p1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->d:Landroid/widget/PopupWindow;

    sget v1, Lcom/facebook/ba;->CustomToast_Fade:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 78
    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->d:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 81
    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    goto :goto_0
.end method

.method public final a(IIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->d:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/a/d;

    .line 38
    :goto_0
    invoke-static {v0, p1, p2, p3, p4}, Lcom/instagram/ui/widget/a/a;->a(Lcom/instagram/ui/widget/a/d;IIII)V

    .line 40
    iget-object v1, p0, Lcom/instagram/ui/widget/a/a;->d:Landroid/widget/PopupWindow;

    if-nez v1, :cond_1

    .line 41
    invoke-direct {p0, v0}, Lcom/instagram/ui/widget/a/a;->a(Landroid/view/View;)V

    .line 47
    :goto_1
    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/ui/widget/a/b;

    invoke-direct {v1, p0}, Lcom/instagram/ui/widget/a/b;-><init>(Lcom/instagram/ui/widget/a/a;)V

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    return-void

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/instagram/ui/widget/a/a;->b()Lcom/instagram/ui/widget/a/d;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/instagram/ui/widget/a/a;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/instagram/ui/widget/a/d;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/instagram/ui/widget/a/d;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/PopupWindow;->update(II)V

    goto :goto_1
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/instagram/ui/widget/a/a;->e:Landroid/view/View$OnClickListener;

    .line 90
    return-void
.end method
