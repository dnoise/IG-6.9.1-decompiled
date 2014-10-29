.class public Lcom/instagram/android/widget/ObservableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ObservableLinearLayout.java"


# instance fields
.field private a:Lcom/instagram/android/widget/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 33
    iget-object v0, p0, Lcom/instagram/android/widget/ObservableLinearLayout;->a:Lcom/instagram/android/widget/p;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/instagram/android/widget/ObservableLinearLayout;->a:Lcom/instagram/android/widget/p;

    invoke-interface {v0, p2, p4}, Lcom/instagram/android/widget/p;->a(II)V

    .line 36
    :cond_0
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/instagram/android/widget/p;)V
    .locals 0
    .parameter "onSizeChangedListener"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/instagram/android/widget/ObservableLinearLayout;->a:Lcom/instagram/android/widget/p;

    .line 27
    return-void
.end method
