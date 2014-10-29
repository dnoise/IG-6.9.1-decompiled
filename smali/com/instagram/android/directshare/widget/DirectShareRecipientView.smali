.class public Lcom/instagram/android/directshare/widget/DirectShareRecipientView;
.super Lcom/instagram/common/ui/widget/imageview/CircularImageView;
.source "DirectShareRecipientView.java"

# interfaces
.implements Lcom/instagram/ui/c/b;


# instance fields
.field private b:Landroid/view/View$OnFocusChangeListener;

.field private c:Lcom/instagram/android/directshare/widget/d;

.field private d:Lcom/instagram/ui/f/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->d()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->d()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->d()V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/ui/f/b;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->d:Lcom/instagram/ui/f/b;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/android/directshare/widget/d;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->c:Lcom/instagram/android/directshare/widget/d;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->b:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 55
    invoke-super {p0, v0}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setClickable(Z)V

    .line 56
    invoke-super {p0, v0}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setFocusable(Z)V

    .line 57
    invoke-super {p0, v0}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setFocusableInTouchMode(Z)V

    .line 58
    new-instance v0, Lcom/instagram/android/directshare/widget/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/directshare/widget/e;-><init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;B)V

    invoke-super {p0, v0}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 59
    new-instance v0, Lcom/instagram/android/directshare/widget/a;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/widget/a;-><init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)V

    invoke-super {p0, v0}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->c:Lcom/instagram/android/directshare/widget/d;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->c:Lcom/instagram/android/directshare/widget/d;

    invoke-interface {v0, p0}, Lcom/instagram/android/directshare/widget/d;->a(Landroid/view/View;)V

    .line 128
    :cond_0
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .parameter "outAttrs"

    .prologue
    .line 102
    const/4 v0, 0x0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 103
    invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->onCheckIsTextEditor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/instagram/ui/c/a;

    new-instance v1, Lcom/instagram/android/directshare/widget/c;

    invoke-direct {v1, p0, p0}, Lcom/instagram/android/directshare/widget/c;-><init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;Landroid/view/View;)V

    invoke-direct {v0, v1, p0}, Lcom/instagram/ui/c/a;-><init>(Landroid/view/inputmethod/InputConnection;Lcom/instagram/ui/c/b;)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 115
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->c:Lcom/instagram/android/directshare/widget/d;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->c:Lcom/instagram/android/directshare/widget/d;

    invoke-interface {v0, p0}, Lcom/instagram/android/directshare/widget/d;->a(Landroid/view/View;)V

    .line 120
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnDeleteKeyListener(Lcom/instagram/android/directshare/widget/d;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->c:Lcom/instagram/android/directshare/widget/d;

    .line 93
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->b:Landroid/view/View$OnFocusChangeListener;

    .line 89
    return-void
.end method

.method public setTooltipString(Ljava/lang/String;)V
    .locals 3
    .parameter "username"

    .prologue
    .line 67
    new-instance v0, Lcom/instagram/ui/g/a;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/ui/g/a;-><init>(Landroid/view/LayoutInflater;Landroid/util/DisplayMetrics;)V

    .line 70
    invoke-virtual {v0, p1}, Lcom/instagram/ui/g/a;->a(Ljava/lang/String;)V

    .line 71
    new-instance v1, Lcom/instagram/android/directshare/widget/b;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/widget/b;-><init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)V

    invoke-virtual {v0, v1}, Lcom/instagram/ui/g/a;->b(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-static {}, Lcom/instagram/ui/f/a;->a()Lcom/instagram/ui/f/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/instagram/ui/f/a;->a(Landroid/view/View;)Lcom/instagram/ui/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/ui/f/a;->a(Lcom/instagram/ui/f/f;)Lcom/instagram/ui/f/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/f/a;->a(Landroid/content/Context;)Lcom/instagram/ui/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->d:Lcom/instagram/ui/f/b;

    .line 84
    return-void
.end method
