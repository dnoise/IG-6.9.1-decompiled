.class public Lcom/instagram/android/widget/IgAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "IgAutoCompleteTextView.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/android/widget/IgAutoCompleteTextView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:F

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/instagram/android/widget/IgAutoCompleteTextView;

    sput-object v0, Lcom/instagram/android/widget/IgAutoCompleteTextView;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->a()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->a()V

    .line 36
    return-void
.end method

.method private a(Landroid/text/Editable;)I
    .locals 3
    .parameter

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getSelectionEnd()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 148
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_0

    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1

    .line 152
    :cond_0
    :goto_1
    return v0

    .line 147
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 152
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "DROID3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "DROID4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "DROID BIONIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/widget/IgAutoCompleteTextView;->b:F

    .line 52
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->autocomplete_list_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/widget/IgAutoCompleteTextView;->c:I

    .line 56
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getInputType()I

    move-result v0

    .line 57
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 58
    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->setRawInputType(I)V

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 161
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 70
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v2

    if-gt v2, v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getSelectionEnd()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getSelectionEnd()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v3, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getSelectionEnd()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    .line 81
    invoke-interface {v3, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x40

    if-eq v4, v5, :cond_3

    invoke-interface {v3, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_5

    .line 83
    :cond_3
    if-eqz v2, :cond_4

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->a(I)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    move v0, v1

    .line 84
    goto :goto_0

    .line 80
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onFilterComplete(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onFilterComplete(I)V

    .line 112
    iget v0, p0, Lcom/instagram/android/widget/IgAutoCompleteTextView;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/instagram/android/widget/IgAutoCompleteTextView;->b:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 114
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->setDropDownHeight(I)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget v0, p0, Lcom/instagram/android/widget/IgAutoCompleteTextView;->b:F

    iget v1, p0, Lcom/instagram/android/widget/IgAutoCompleteTextView;->c:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->setDropDownHeight(I)V

    goto :goto_0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 4
    .parameter "text"
    .parameter "keyCode"

    .prologue
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getSelectionEnd()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 96
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 97
    :goto_0
    if-ltz v0, :cond_1

    .line 98
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_1

    .line 100
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 104
    :cond_0
    sget-object v2, Lcom/instagram/android/widget/IgAutoCompleteTextView;->a:Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 107
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "text"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 125
    invoke-direct {p0, v0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->a(Landroid/text/Editable;)I

    move-result v2

    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getSelectionEnd()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getSelectionEnd()I

    move-result v3

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getSelectionEnd()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :goto_0
    invoke-virtual {p0, v1}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 143
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 144
    return-void

    .line 136
    :cond_1
    invoke-virtual {v1, v2, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final setDropDownMaxNumberItemsDisplayed$2549578(I)V
    .locals 1
    .parameter "dropDownHeight"

    .prologue
    .line 62
    const/high16 v0, 0x4020

    iput v0, p0, Lcom/instagram/android/widget/IgAutoCompleteTextView;->b:F

    .line 63
    iput p1, p0, Lcom/instagram/android/widget/IgAutoCompleteTextView;->c:I

    .line 64
    return-void
.end method
