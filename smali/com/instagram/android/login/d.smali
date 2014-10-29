.class public final Lcom/instagram/android/login/d;
.super Ljava/lang/Object;
.source "PasswordValidator.java"


# instance fields
.field private final a:Landroid/widget/EditText;

.field private final b:Landroid/widget/EditText;

.field private final c:Landroid/graphics/drawable/Drawable;

.field private final d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:Z

.field private g:Lcom/instagram/android/login/j;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    .line 39
    iput-object p3, p0, Lcom/instagram/android/login/d;->b:Landroid/widget/EditText;

    .line 41
    sget v0, Lcom/facebook/au;->profile_glyph_password:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/d;->c:Landroid/graphics/drawable/Drawable;

    .line 42
    sget v0, Lcom/facebook/au;->profile_glyph_password_red:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/d;->d:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-direct {p0}, Lcom/instagram/android/login/d;->d()V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/login/d;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private static a(Landroid/widget/EditText;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 170
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/login/d;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/instagram/android/login/d;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/instagram/android/login/d;->e:Z

    .line 160
    iget-object v1, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/login/d;->d:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-static {v1, v0}, Lcom/instagram/android/login/d;->a(Landroid/widget/EditText;Landroid/graphics/drawable/Drawable;)V

    .line 161
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/d;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/login/d;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/instagram/android/login/d;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/instagram/android/login/d;->f:Z

    .line 165
    iget-object v1, p0, Lcom/instagram/android/login/d;->b:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/login/d;->d:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-static {v1, v0}, Lcom/instagram/android/login/d;->a(Landroid/widget/EditText;Landroid/graphics/drawable/Drawable;)V

    .line 166
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/d;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/login/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/instagram/android/login/d;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/instagram/android/login/d;)Lcom/instagram/android/login/j;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/instagram/android/login/d;->g:Lcom/instagram/android/login/j;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/login/d;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/instagram/android/login/d;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/e;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/e;-><init>(Lcom/instagram/android/login/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 113
    iget-object v0, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/f;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/f;-><init>(Lcom/instagram/android/login/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    iget-object v0, p0, Lcom/instagram/android/login/d;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/g;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/g;-><init>(Lcom/instagram/android/login/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 143
    iget-object v0, p0, Lcom/instagram/android/login/d;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/instagram/android/login/h;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/h;-><init>(Lcom/instagram/android/login/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    return-void
.end method

.method static synthetic e(Lcom/instagram/android/login/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/instagram/android/login/d;->f:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/instagram/android/login/j;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/instagram/android/login/d;->g:Lcom/instagram/android/login/j;

    .line 49
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/instagram/android/login/d;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 69
    iget-object v0, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/instagram/android/login/d;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->password_must_be_six_characters:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 75
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->passwords_do_not_match:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/instagram/android/login/d;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/instagram/android/login/d;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
