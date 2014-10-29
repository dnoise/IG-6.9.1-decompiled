.class final Lcom/instagram/android/nux/y;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/instagram/android/nux/w;


# direct methods
.method constructor <init>(Lcom/instagram/android/nux/w;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/instagram/android/nux/y;->b:Lcom/instagram/android/nux/w;

    iput-object p2, p0, Lcom/instagram/android/nux/y;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 223
    invoke-static {}, Lcom/instagram/l/a/a;->a()Lcom/instagram/l/a/a;

    move-result-object v1

    .line 224
    iget-object v0, p0, Lcom/instagram/android/nux/y;->a:Landroid/app/Dialog;

    sget v2, Lcom/facebook/av;->dev_server:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 225
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-static {v2}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    invoke-virtual {v1, v4}, Lcom/instagram/l/a/a;->a(Z)V

    .line 241
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/nux/y;->b:Lcom/instagram/android/nux/w;

    iget-object v1, v1, Lcom/instagram/android/nux/w;->a:Lcom/instagram/android/nux/n;

    invoke-virtual {v1}, Lcom/instagram/android/nux/n;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 243
    iget-object v0, p0, Lcom/instagram/android/nux/y;->b:Lcom/instagram/android/nux/w;

    iget-object v0, v0, Lcom/instagram/android/nux/w;->a:Lcom/instagram/android/nux/n;

    sget v1, Lcom/facebook/az;->dev_host_set_to:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/instagram/api/h/c;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/nux/n;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {v0}, Lcom/instagram/o/e;->a(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/instagram/android/nux/y;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 250
    return-void

    .line 230
    :cond_0
    invoke-virtual {v1, v5}, Lcom/instagram/l/a/a;->a(Z)V

    .line 232
    const-string v3, "preprod"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    const-string v2, "preprod.instagram.com"

    invoke-virtual {v1, v2}, Lcom/instagram/l/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_1
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 235
    invoke-virtual {v1, v2}, Lcom/instagram/l/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".sb.facebook.com:8084"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/l/a/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
