.class final Lcom/instagram/android/people/b/e;
.super Ljava/lang/Object;
.source "PeopleTagFragment.java"

# interfaces
.implements Lcom/instagram/common/ui/b/a;


# instance fields
.field final synthetic a:Lcom/instagram/android/people/b/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/instagram/android/people/b/e;->a:Lcom/instagram/android/people/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x4000

    .line 144
    iget-object v0, p0, Lcom/instagram/android/people/b/e;->a:Lcom/instagram/android/people/b/a;

    invoke-virtual {v0}, Lcom/instagram/android/people/b/a;->o()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 145
    iget-object v1, p0, Lcom/instagram/android/people/b/e;->a:Lcom/instagram/android/people/b/a;

    invoke-virtual {v1}, Lcom/instagram/android/people/b/a;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/at;->action_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 146
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 147
    iget-object v3, p0, Lcom/instagram/android/people/b/e;->a:Lcom/instagram/android/people/b/a;

    invoke-virtual {v3}, Lcom/instagram/android/people/b/a;->l()Landroid/support/v4/app/k;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 148
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 152
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 154
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 156
    iget-object v1, p0, Lcom/instagram/android/people/b/e;->a:Lcom/instagram/android/people/b/a;

    invoke-virtual {v1}, Lcom/instagram/android/people/b/a;->o()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 159
    iget-object v2, p0, Lcom/instagram/android/people/b/e;->a:Lcom/instagram/android/people/b/a;

    invoke-static {v2}, Lcom/instagram/android/people/b/a;->a(Lcom/instagram/android/people/b/a;)Lcom/instagram/android/people/widget/PhotoScrollView;

    move-result-object v2

    sget v3, Lcom/facebook/av;->people_tag_landscape_photo_container:I

    invoke-virtual {v2, v3}, Lcom/instagram/android/people/widget/PhotoScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 162
    return-void
.end method
