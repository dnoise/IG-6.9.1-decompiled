.class public final Landroid/support/v4/view/az;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/bc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 59
    new-instance v0, Landroid/support/v4/view/bb;

    invoke-direct {v0}, Landroid/support/v4/view/bb;-><init>()V

    sput-object v0, Landroid/support/v4/view/az;->a:Landroid/support/v4/view/bc;

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Landroid/support/v4/view/ba;

    invoke-direct {v0}, Landroid/support/v4/view/ba;-><init>()V

    sput-object v0, Landroid/support/v4/view/az;->a:Landroid/support/v4/view/bc;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewConfiguration;)I
    .locals 1
    .parameter

    .prologue
    .line 73
    sget-object v0, Landroid/support/v4/view/az;->a:Landroid/support/v4/view/bc;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bc;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method
