.class public Lcom/instagram/base/activity/tabactivity/IgTabWidget;
.super Landroid/widget/LinearLayout;
.source "IgTabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private a:Lcom/instagram/base/activity/tabactivity/j;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I

    .line 56
    invoke-direct {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I

    .line 61
    invoke-direct {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a()V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/instagram/base/activity/tabactivity/IgTabWidget;)Lcom/instagram/base/activity/tabactivity/j;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a:Lcom/instagram/base/activity/tabactivity/j;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->setChildrenDrawingOrderEnabled(Z)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->setFocusable(Z)V

    .line 87
    invoke-virtual {p0, p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 88
    return-void
.end method

.method private a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 179
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public addView(Landroid/view/View;)V
    .locals 5
    .parameter "child"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f80

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 251
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 252
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 257
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 259
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    new-instance v0, Lcom/instagram/base/activity/tabactivity/k;

    invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getTabCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, p0, v1, v3}, Lcom/instagram/base/activity/tabactivity/k;-><init>(Lcom/instagram/base/activity/tabactivity/IgTabWidget;IB)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 265
    return-void
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 223
    iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I

    .line 226
    invoke-virtual {p0, p1}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->setCurrentTab(I)V

    .line 229
    if-eq v0, p1, :cond_0

    .line 230
    invoke-virtual {p0, p1}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 232
    :cond_0
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I

    invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->invalidate()V

    .line 114
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 163
    invoke-direct {p0, p1}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 167
    :cond_0
    iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 168
    iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I

    invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 170
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 173
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 66
    iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 76
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 71
    .restart local p2
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 72
    iget p2, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I

    goto :goto_0

    .line 73
    :cond_2
    iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I

    if-lt p2, v0, :cond_0

    .line 74
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getChildCount()I

    move-result v0

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v1, 0x0

    .line 282
    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 283
    iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I

    invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    if-eqz p2, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getTabCount()I

    move-result v2

    move v0, v1

    .line 290
    :goto_1
    if-ge v0, v2, :cond_0

    .line 291
    invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 292
    invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->setCurrentTab(I)V

    .line 293
    iget-object v2, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a:Lcom/instagram/base/activity/tabactivity/j;

    invoke-interface {v2, v0, v1}, Lcom/instagram/base/activity/tabactivity/j;->a(IZ)V

    .line 294
    invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 300
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 185
    const-class v0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getTabCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 187
    iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 188
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 205
    const-class v0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 270
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I

    .line 271
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 145
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I

    if-ne p1, v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 150
    iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I

    invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 152
    :cond_2
    iput p1, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I

    .line 153
    iget v0, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->b:I

    invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 238
    invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getTabCount()I

    move-result v1

    .line 239
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 240
    invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a(I)Landroid/view/View;

    move-result-object v2

    .line 241
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method setTabSelectionListener(Lcom/instagram/base/activity/tabactivity/j;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->a:Lcom/instagram/base/activity/tabactivity/j;

    .line 278
    return-void
.end method
