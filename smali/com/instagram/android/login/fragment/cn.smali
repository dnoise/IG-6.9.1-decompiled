.class final Lcom/instagram/android/login/fragment/cn;
.super Ljava/lang/Object;
.source "VerifyFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/ci;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/ci;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/instagram/android/login/fragment/cn;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/ci;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/cn;-><init>(Lcom/instagram/android/login/fragment/ci;)V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 372
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter "s"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 333
    iget-object v0, p0, Lcom/instagram/android/login/fragment/cn;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/ci;->e(Lcom/instagram/android/login/fragment/ci;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 335
    invoke-static {p1}, Lcom/instagram/android/login/fragment/cn;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_0
    iget-boolean v2, p0, Lcom/instagram/android/login/fragment/cn;->b:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_0
    iget-boolean v2, p0, Lcom/instagram/android/login/fragment/cn;->b:Z

    if-eqz v2, :cond_1

    .line 353
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 354
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 363
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p1, v5, v1, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 365
    iput-boolean v5, p0, Lcom/instagram/android/login/fragment/cn;->b:Z

    .line 366
    iget-object v0, p0, Lcom/instagram/android/login/fragment/cn;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/ci;->e(Lcom/instagram/android/login/fragment/ci;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 368
    iget-object v0, p0, Lcom/instagram/android/login/fragment/cn;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/ci;->f(Lcom/instagram/android/login/fragment/ci;)V

    .line 369
    return-void

    .line 356
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 357
    const-string v0, ""

    goto :goto_1

    .line 359
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter
    .parameter
    .parameter "count"
    .parameter "after"

    .prologue
    .line 377
    if-ge p4, p3, :cond_0

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/login/fragment/cn;->b:Z

    .line 380
    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    return-void
.end method
