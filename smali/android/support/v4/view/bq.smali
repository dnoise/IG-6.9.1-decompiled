.class final Landroid/support/v4/view/bq;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2913
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bj;

    .line 2914
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/bj;

    .line 2915
    iget-boolean v2, v0, Landroid/support/v4/view/bj;->a:Z

    iget-boolean v3, v1, Landroid/support/v4/view/bj;->a:Z

    if-eq v2, v3, :cond_1

    .line 2916
    iget-boolean v0, v0, Landroid/support/v4/view/bj;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2918
    :goto_0
    return v0

    .line 2916
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 2918
    :cond_1
    iget v0, v0, Landroid/support/v4/view/bj;->e:I

    iget v1, v1, Landroid/support/v4/view/bj;->e:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2910
    check-cast p1, Landroid/view/View;

    .end local p1
    check-cast p2, Landroid/view/View;

    .end local p2
    invoke-static {p1, p2}, Landroid/support/v4/view/bq;->a(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
