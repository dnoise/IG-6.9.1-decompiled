.class public final Lcom/instagram/android/fragment/aa;
.super Lcom/instagram/ui/widget/searchedittext/b;
.source "CompositeSearchFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/y;


# direct methods
.method protected constructor <init>(Lcom/instagram/android/fragment/y;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/instagram/android/fragment/aa;->a:Lcom/instagram/android/fragment/y;

    invoke-direct {p0}, Lcom/instagram/ui/widget/searchedittext/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/ui/widget/searchedittext/SearchEditText;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/instagram/android/fragment/aa;->a:Lcom/instagram/android/fragment/y;

    invoke-virtual {p1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getStrippedText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/y/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/y;->a(Lcom/instagram/android/fragment/y;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 159
    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/instagram/android/fragment/aa;->a:Lcom/instagram/android/fragment/y;

    sget v1, Lcom/instagram/android/fragment/ef;->b:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/y;->a(I)V

    .line 167
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/fragment/aa;->a:Lcom/instagram/android/fragment/y;

    invoke-static {v0}, Lcom/instagram/android/fragment/y;->d(Lcom/instagram/android/fragment/y;)Lcom/instagram/android/fragment/ej;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/aa;->a:Lcom/instagram/android/fragment/y;

    invoke-static {v1}, Lcom/instagram/android/fragment/y;->c(Lcom/instagram/android/fragment/y;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ej;->c(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/instagram/android/fragment/aa;->a:Lcom/instagram/android/fragment/y;

    invoke-static {v0}, Lcom/instagram/android/fragment/y;->e(Lcom/instagram/android/fragment/y;)Lcom/instagram/android/fragment/eh;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/aa;->a:Lcom/instagram/android/fragment/y;

    invoke-static {v1}, Lcom/instagram/android/fragment/y;->c(Lcom/instagram/android/fragment/y;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/eh;->c(Ljava/lang/String;)V

    .line 169
    return-void

    .line 161
    :cond_1
    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/instagram/android/fragment/aa;->a:Lcom/instagram/android/fragment/y;

    sget v1, Lcom/instagram/android/fragment/ef;->a:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/y;->a(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/instagram/android/fragment/aa;->a:Lcom/instagram/android/fragment/y;

    invoke-static {v0}, Lcom/instagram/android/fragment/y;->b(Lcom/instagram/android/fragment/y;)Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->clearFocus()V

    .line 148
    iget-object v0, p0, Lcom/instagram/android/fragment/aa;->a:Lcom/instagram/android/fragment/y;

    invoke-static {v0}, Lcom/instagram/android/fragment/y;->a(Lcom/instagram/android/fragment/y;)Lcom/instagram/android/fragment/ea;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/fragment/ea;->b(Ljava/lang/String;)V

    .line 149
    return-void
.end method
