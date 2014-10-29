.class public Lcom/instagram/ui/widget/searchedittext/SearchEditText;
.super Landroid/widget/EditText;
.source "SearchEditText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private a:[Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Lcom/instagram/ui/widget/searchedittext/b;

.field private d:Landroid/view/inputmethod/InputMethodManager;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->e:Z

    .line 44
    invoke-direct {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->e:Z

    .line 49
    invoke-direct {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->e:Z

    .line 54
    invoke-direct {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a()V

    .line 55
    return-void
.end method

.method private static a(Landroid/text/Editable;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 58
    invoke-virtual {p0, p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    .line 60
    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 61
    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-static {}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/instagram/ui/widget/searchedittext/a;

    invoke-direct {v0, p0}, Lcom/instagram/ui/widget/searchedittext/a;-><init>(Lcom/instagram/ui/widget/searchedittext/SearchEditText;)V

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->d:Landroid/view/inputmethod/InputMethodManager;

    .line 72
    return-void
.end method

.method private static b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 229
    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    const/16 v0, 0x42

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d()Z
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x1

    .line 77
    :try_start_0
    const-string v1, "com.htc.textselection.HtcTextSelectionManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->g:Z

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->i:Z

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->requestFocus()Z

    goto :goto_0
.end method


# virtual methods
.method protected a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 187
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->clearFocus()V

    .line 189
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b()V

    .line 190
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->d:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 236
    iput-boolean v2, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->h:Z

    .line 237
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->g:Z

    if-nez v0, :cond_0

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->h:Z

    .line 250
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->d:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setFocusableInTouchMode(Z)V

    .line 130
    invoke-super {p0}, Landroid/widget/EditText;->clearFocus()V

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setFocusableInTouchMode(Z)V

    .line 132
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b()V

    .line 289
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrippedText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 116
    const/16 v2, 0x40

    if-eq v1, v2, :cond_2

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    .line 117
    :cond_2
    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter "actionId"
    .parameter

    .prologue
    .line 203
    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b()V

    .line 205
    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c:Lcom/instagram/ui/widget/searchedittext/b;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c:Lcom/instagram/ui/widget/searchedittext/b;

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/searchedittext/b;->a(Ljava/lang/String;)V

    .line 208
    :cond_1
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-static {p1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b()V

    .line 219
    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c:Lcom/instagram/ui/widget/searchedittext/b;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c:Lcom/instagram/ui/widget/searchedittext/b;

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/searchedittext/b;->a(Ljava/lang/String;)V

    .line 225
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->g:Z

    .line 271
    iget-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->i:Z

    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->f()V

    .line 273
    iput-boolean v1, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->i:Z

    .line 276
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->h:Z

    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c()V

    .line 278
    iput-boolean v1, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->h:Z

    .line 280
    :cond_1
    return-void
.end method

.method public onPreDraw()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->e()Z

    move-result v0

    .line 155
    iget-boolean v3, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->f:Z

    if-ne v3, v0, :cond_2

    .line 156
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->f:Z

    .line 157
    iget-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->e:Z

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v3, v1

    iget-object v3, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v5

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 164
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 156
    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v3, v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v5

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 164
    :cond_2
    invoke-super {p0}, Landroid/widget/EditText;->onPreDraw()Z

    move-result v2

    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "sequence"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 170
    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c:Lcom/instagram/ui/widget/searchedittext/b;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c:Lcom/instagram/ui/widget/searchedittext/b;

    invoke-virtual {v0, p0, p1}, Lcom/instagram/ui/widget/searchedittext/b;->a(Lcom/instagram/ui/widget/searchedittext/SearchEditText;Ljava/lang/CharSequence;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 136
    iget-boolean v1, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->f:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 138
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->requestFocus()Z

    .line 140
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c()V

    .line 143
    :cond_0
    invoke-static {}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->requestFocus()Z

    .line 145
    invoke-virtual {p0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c()V

    .line 148
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setClearButtonAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 94
    return-void
.end method

.method public setClearButtonColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "colorFilter"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 98
    return-void
.end method

.method public setClearButtonEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->e:Z

    .line 90
    return-void
.end method

.method public setOnFilterTextListener(Lcom/instagram/ui/widget/searchedittext/b;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->c:Lcom/instagram/ui/widget/searchedittext/b;

    .line 102
    return-void
.end method
