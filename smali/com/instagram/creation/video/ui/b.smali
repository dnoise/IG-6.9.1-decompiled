.class public final Lcom/instagram/creation/video/ui/b;
.super Landroid/view/View;
.source "ClipView.java"

# interfaces
.implements Lcom/instagram/creation/video/i/b;


# instance fields
.field private final a:Lcom/instagram/creation/video/i/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/creation/video/i/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/instagram/creation/video/ui/b;->setTag(Ljava/lang/Object;)V

    .line 20
    iput-object p2, p0, Lcom/instagram/creation/video/ui/b;->a:Lcom/instagram/creation/video/i/a;

    .line 21
    iget-object v0, p0, Lcom/instagram/creation/video/ui/b;->a:Lcom/instagram/creation/video/i/a;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/video/i/a;->a(Lcom/instagram/creation/video/i/b;)V

    .line 23
    invoke-virtual {p2}, Lcom/instagram/creation/video/i/a;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/ui/b;->b(I)V

    .line 24
    return-void
.end method

.method private b(I)V
    .locals 1
    .parameter

    .prologue
    .line 47
    sget v0, Lcom/instagram/creation/video/i/c;->a:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/instagram/creation/video/i/c;->b:I

    if-ne p1, v0, :cond_2

    .line 48
    :cond_0
    sget v0, Lcom/facebook/au;->camcorder_progress_blue:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/b;->setBackgroundResource(I)V

    .line 52
    :cond_1
    :goto_0
    return-void

    .line 49
    :cond_2
    sget v0, Lcom/instagram/creation/video/i/c;->c:I

    if-ne p1, v0, :cond_1

    .line 50
    sget v0, Lcom/facebook/au;->camcorder_progress_red:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/b;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/ui/b;->b(I)V

    .line 44
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/i/a;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/b;->requestLayout()V

    .line 39
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 28
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 29
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 30
    int-to-long v2, v0

    iget-object v0, p0, Lcom/instagram/creation/video/ui/b;->a:Lcom/instagram/creation/video/i/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/a;->b()J

    move-result-wide v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3a98

    div-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/instagram/creation/video/ui/b;->setMeasuredDimension(II)V

    .line 34
    return-void
.end method
