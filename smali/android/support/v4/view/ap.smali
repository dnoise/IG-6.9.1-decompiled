.class Landroid/support/v4/view/ap;
.super Landroid/support/v4/view/ao;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Landroid/support/v4/view/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 450
    invoke-virtual {p2}, Landroid/support/v4/view/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/aw;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 451
    return-void
.end method

.method public final a(Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 430
    invoke-static {p1, p2}, Landroid/support/v4/view/aw;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
