.class final Lcom/instagram/android/widget/ag;
.super Ljava/lang/Object;
.source "ViewSwitchWidgetHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/instagram/android/feed/a/a;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/instagram/android/feed/a/a;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/instagram/android/widget/ag;->a:Lcom/instagram/android/feed/a/a;

    .line 56
    iput-object p2, p0, Lcom/instagram/android/widget/ag;->b:Landroid/view/View;

    .line 57
    iput-object p3, p0, Lcom/instagram/android/widget/ag;->c:Landroid/view/View;

    .line 58
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/instagram/android/widget/ag;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->d()V

    .line 63
    iget-object v3, p0, Lcom/instagram/android/widget/ag;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/android/widget/ag;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->o()I

    move-result v0

    sget v4, Lcom/instagram/android/feed/a/h;->b:I

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 64
    iget-object v0, p0, Lcom/instagram/android/widget/ag;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/instagram/android/widget/ag;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v3}, Lcom/instagram/android/feed/a/a;->o()I

    move-result v3

    sget v4, Lcom/instagram/android/feed/a/h;->a:I

    if-ne v3, v4, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 65
    return-void

    :cond_0
    move v0, v2

    .line 63
    goto :goto_0

    :cond_1
    move v1, v2

    .line 64
    goto :goto_1
.end method
