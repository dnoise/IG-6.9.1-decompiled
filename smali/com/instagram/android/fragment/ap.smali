.class final Lcom/instagram/android/fragment/ap;
.super Landroid/widget/ArrayAdapter;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;",
        "Landroid/widget/SpinnerAdapter;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 621
    sget v0, Lcom/facebook/aw;->spinner_gender_selected:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 623
    iput-object p1, p0, Lcom/instagram/android/fragment/ap;->a:Landroid/content/Context;

    .line 624
    const-string v0, "-"

    iput-object v0, p0, Lcom/instagram/android/fragment/ap;->b:Ljava/lang/String;

    .line 625
    sget v0, Lcom/facebook/az;->gender_male:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ap;->c:Ljava/lang/String;

    .line 626
    sget v0, Lcom/facebook/az;->gender_female:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ap;->d:Ljava/lang/String;

    .line 627
    return-void
.end method

.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 630
    sget v0, Lcom/instagram/android/g/b/c;->c:I

    if-ne p0, v0, :cond_0

    .line 631
    const/4 v0, 0x0

    .line 635
    :goto_0
    return v0

    .line 632
    :cond_0
    sget v0, Lcom/instagram/android/g/b/c;->a:I

    if-ne p0, v0, :cond_1

    .line 633
    const/4 v0, 0x1

    goto :goto_0

    .line 635
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static b(I)I
    .locals 1
    .parameter

    .prologue
    .line 639
    if-nez p0, :cond_0

    .line 640
    sget v0, Lcom/instagram/android/g/b/c;->c:I

    .line 644
    :goto_0
    return v0

    .line 641
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 642
    sget v0, Lcom/instagram/android/g/b/c;->a:I

    goto :goto_0

    .line 644
    :cond_1
    sget v0, Lcom/instagram/android/g/b/c;->b:I

    goto :goto_0
.end method

.method private c(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 649
    invoke-static {p1}, Lcom/instagram/android/fragment/ap;->b(I)I

    move-result v0

    .line 650
    sget v1, Lcom/instagram/android/g/b/c;->c:I

    if-ne v0, v1, :cond_0

    .line 651
    iget-object v0, p0, Lcom/instagram/android/fragment/ap;->b:Ljava/lang/String;

    .line 655
    :goto_0
    return-object v0

    .line 652
    :cond_0
    sget v1, Lcom/instagram/android/g/b/c;->a:I

    if-ne v0, v1, :cond_1

    .line 653
    iget-object v0, p0, Lcom/instagram/android/fragment/ap;->c:Ljava/lang/String;

    goto :goto_0

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/ap;->d:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x3

    return v0
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 665
    if-nez p2, :cond_0

    .line 666
    iget-object v0, p0, Lcom/instagram/android/fragment/ap;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->spinner_gender_dropdown:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 669
    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    return-object p2
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 612
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
