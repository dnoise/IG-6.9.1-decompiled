.class final Landroid/support/v4/view/bf;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 2
    .parameter "t"

    .prologue
    const/high16 v1, 0x3f80

    .line 128
    sub-float/2addr p1, v1

    .line 129
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method
