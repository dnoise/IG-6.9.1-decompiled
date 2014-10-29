.class final Lcom/instagram/android/maps/u;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/CharSequence;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 963
    iput-object p1, p0, Lcom/instagram/android/maps/u;->d:Lcom/instagram/android/maps/PhotoMapsActivity;

    iput-object p2, p0, Lcom/instagram/android/maps/u;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/android/maps/u;->b:[Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/instagram/android/maps/u;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter "which"

    .prologue
    .line 967
    iget-object v0, p0, Lcom/instagram/android/maps/u;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/android/maps/u;->b:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 971
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/u;->d:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-virtual {v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Ljava/util/List;)V

    .line 975
    :cond_0
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v1

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/e/a;->a(Z)V

    .line 989
    :cond_1
    :goto_1
    return-void

    .line 975
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 977
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/maps/u;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/android/maps/u;->b:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 979
    iget-object v0, p0, Lcom/instagram/android/maps/u;->d:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->n(Lcom/instagram/android/maps/PhotoMapsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/b/f;

    .line 980
    iget-object v3, p0, Lcom/instagram/android/maps/u;->d:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v3}, Lcom/instagram/android/maps/PhotoMapsActivity;->f(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/instagram/android/maps/ui/i;->a(Lcom/instagram/android/maps/b/h;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 981
    iget-object v3, p0, Lcom/instagram/android/maps/u;->d:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->b(Lcom/instagram/android/maps/b/f;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 986
    :cond_5
    iget-object v0, p0, Lcom/instagram/android/maps/u;->d:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->b(Lcom/instagram/android/maps/PhotoMapsActivity;Ljava/util/List;)V

    .line 987
    iget-object v0, p0, Lcom/instagram/android/maps/u;->d:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-virtual {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->c()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/maps/d/a;->a(Ljava/util/List;Landroid/support/v4/app/s;)V

    goto :goto_1
.end method
