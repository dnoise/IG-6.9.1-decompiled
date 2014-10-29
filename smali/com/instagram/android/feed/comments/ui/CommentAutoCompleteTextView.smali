.class public Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;
.super Lcom/instagram/android/widget/IgAutoCompleteTextView;
.source "CommentAutoCompleteTextView.java"


# instance fields
.field private a:Lcom/instagram/android/feed/comments/ui/a;

.field private b:Lcom/instagram/android/feed/comments/ui/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/instagram/android/widget/IgAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/widget/IgAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/widget/IgAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 52
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    .line 54
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_0

    .line 56
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    xor-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 57
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 60
    :cond_0
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x4000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 62
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v2, -0x40000001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 65
    :cond_1
    return-object v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 34
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->a:Lcom/instagram/android/feed/comments/ui/a;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->a:Lcom/instagram/android/feed/comments/ui/a;

    invoke-interface {v0}, Lcom/instagram/android/feed/comments/ui/a;->a()V

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 71
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->b:Lcom/instagram/android/feed/comments/ui/b;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->b:Lcom/instagram/android/feed/comments/ui/b;

    invoke-interface {v0}, Lcom/instagram/android/feed/comments/ui/b;->a()V

    .line 74
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->onLayout(ZIIII)V

    .line 75
    return-void
.end method

.method public setBackButtonListener(Lcom/instagram/android/feed/comments/ui/a;)V
    .locals 0
    .parameter "backButtonListener"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->a:Lcom/instagram/android/feed/comments/ui/a;

    .line 79
    return-void
.end method

.method public setSimpleChangedLayoutListener(Lcom/instagram/android/feed/comments/ui/b;)V
    .locals 0
    .parameter "simpleChangedLayoutListener"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->b:Lcom/instagram/android/feed/comments/ui/b;

    .line 84
    return-void
.end method
