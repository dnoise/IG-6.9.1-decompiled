.class final Lcom/instagram/android/people/b/k;
.super Lcom/instagram/ui/widget/searchedittext/b;
.source "PeopleTagSearchFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/people/b/h;


# direct methods
.method private constructor <init>(Lcom/instagram/android/people/b/h;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/instagram/android/people/b/k;->a:Lcom/instagram/android/people/b/h;

    invoke-direct {p0}, Lcom/instagram/ui/widget/searchedittext/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/people/b/h;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/instagram/android/people/b/k;-><init>(Lcom/instagram/android/people/b/h;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/ui/widget/searchedittext/SearchEditText;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/instagram/android/people/b/k;->a:Lcom/instagram/android/people/b/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/people/b/h;->a(Lcom/instagram/android/people/b/h;Z)Z

    .line 201
    invoke-virtual {p1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getStrippedText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/instagram/android/people/b/k;->a:Lcom/instagram/android/people/b/h;

    invoke-static {v1}, Lcom/instagram/android/people/b/h;->b(Lcom/instagram/android/people/b/h;)Lcom/instagram/android/people/widget/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/people/widget/d;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/instagram/android/people/b/k;->a:Lcom/instagram/android/people/b/h;

    invoke-static {v1, v0}, Lcom/instagram/android/people/b/h;->a(Lcom/instagram/android/people/b/h;Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/instagram/android/people/b/k;->a:Lcom/instagram/android/people/b/h;

    invoke-static {v0}, Lcom/instagram/android/people/b/h;->c(Lcom/instagram/android/people/b/h;)V

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/b/k;->a:Lcom/instagram/android/people/b/h;

    invoke-static {v0}, Lcom/instagram/android/people/b/h;->d(Lcom/instagram/android/people/b/h;)V

    .line 208
    iget-object v0, p0, Lcom/instagram/android/people/b/k;->a:Lcom/instagram/android/people/b/h;

    invoke-static {v0}, Lcom/instagram/android/people/b/h;->e(Lcom/instagram/android/people/b/h;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/instagram/android/people/b/k;->a:Lcom/instagram/android/people/b/h;

    invoke-virtual {v0, p1}, Lcom/instagram/android/people/b/h;->a(Ljava/lang/String;)V

    .line 215
    return-void
.end method
