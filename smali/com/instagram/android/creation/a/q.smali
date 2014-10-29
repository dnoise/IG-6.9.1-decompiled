.class final Lcom/instagram/android/creation/a/q;
.super Lcom/instagram/ui/widget/searchedittext/b;
.source "DirectShareFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/d;


# direct methods
.method private constructor <init>(Lcom/instagram/android/creation/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/instagram/android/creation/a/q;->a:Lcom/instagram/android/creation/a/d;

    invoke-direct {p0}, Lcom/instagram/ui/widget/searchedittext/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/creation/a/d;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 600
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/q;-><init>(Lcom/instagram/android/creation/a/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/ui/widget/searchedittext/SearchEditText;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 606
    invoke-virtual {p1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getStrippedText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    iget-object v1, p0, Lcom/instagram/android/creation/a/q;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v1}, Lcom/instagram/android/creation/a/d;->f(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/directshare/widget/i;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 609
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 610
    iget-object v1, p0, Lcom/instagram/android/creation/a/q;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v1, v0}, Lcom/instagram/android/creation/a/d;->a(Lcom/instagram/android/creation/a/d;Ljava/lang/CharSequence;)V

    .line 611
    iget-object v0, p0, Lcom/instagram/android/creation/a/q;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->a(Lcom/instagram/android/creation/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/instagram/android/creation/a/q;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->b(Lcom/instagram/android/creation/a/d;)V

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/a/q;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->e(Lcom/instagram/android/creation/a/d;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 621
    iget-object v0, p0, Lcom/instagram/android/creation/a/q;->a:Lcom/instagram/android/creation/a/d;

    invoke-virtual {v0, p1}, Lcom/instagram/android/creation/a/d;->a(Ljava/lang/String;)V

    .line 622
    return-void
.end method
