.class final Landroid/support/v4/view/a/r;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "AccessibilityNodeProviderCompatJellyBean.java"


# instance fields
.field final synthetic a:Landroid/support/v4/view/a/s;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/s;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Landroid/support/v4/view/a/r;->a:Landroid/support/v4/view/a/s;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/v4/view/a/r;->a:Landroid/support/v4/view/a/s;

    invoke-interface {v0}, Landroid/support/v4/view/a/s;->c()Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v4/view/a/r;->a:Landroid/support/v4/view/a/s;

    invoke-interface {v0}, Landroid/support/v4/view/a/s;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v4/view/a/r;->a:Landroid/support/v4/view/a/s;

    invoke-interface {v0}, Landroid/support/v4/view/a/s;->a()Z

    move-result v0

    return v0
.end method
