.class public final Lcom/instagram/android/a/d;
.super Landroid/widget/BaseAdapter;
.source "NearbyVenuesAdapter.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private d:Landroid/location/Location;

.field private e:Z

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/venue/model/Venue;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/venue/model/Venue;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/venue/model/Venue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/a/d;->g:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/a/d;->h:Ljava/util/Set;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/a/d;->i:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/a/d;->j:Ljava/util/List;

    .line 79
    iput-object p1, p0, Lcom/instagram/android/a/d;->c:Landroid/content/Context;

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/a/d;->b:Landroid/view/LayoutInflater;

    .line 81
    invoke-direct {p0}, Lcom/instagram/android/a/d;->e()V

    .line 82
    return-void
.end method

.method private a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 251
    packed-switch p1, :pswitch_data_0

    .line 261
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 255
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/a/d;->b:Landroid/view/LayoutInflater;

    invoke-static {v0, p2}, Lcom/instagram/android/a/k;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    .line 257
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/a/d;->b:Landroid/view/LayoutInflater;

    invoke-static {v0, p2}, Lcom/instagram/android/a/i;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 259
    :pswitch_2
    iget-object v0, p0, Lcom/instagram/android/a/d;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/aw;->row_powered_by_foursquare:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(IILandroid/view/View;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    packed-switch p2, :pswitch_data_0

    .line 286
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 269
    :pswitch_0
    iget-object v1, p0, Lcom/instagram/android/a/d;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/l;

    iget-object v2, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/instagram/android/a/k;->a(Landroid/content/Context;Lcom/instagram/android/a/l;Ljava/lang/String;)V

    .line 284
    :goto_0
    :pswitch_1
    return-void

    .line 273
    :pswitch_2
    iget-object v1, p0, Lcom/instagram/android/a/d;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/l;

    iget-object v2, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/instagram/android/a/k;->b(Landroid/content/Context;Lcom/instagram/android/a/l;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/instagram/android/a/d;->a(I)Lcom/instagram/venue/model/Venue;

    move-result-object v1

    .line 278
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/l;

    invoke-static {v0, v1}, Lcom/instagram/android/a/k;->a(Lcom/instagram/android/a/l;Lcom/instagram/venue/model/Venue;)V

    goto :goto_0

    .line 281
    :pswitch_4
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/a/j;

    invoke-static {v0}, Lcom/instagram/android/a/i;->a(Lcom/instagram/android/a/j;)V

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/instagram/android/a/d;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/instagram/android/a/d;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/instagram/venue/model/Venue;)V
    .locals 2
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/instagram/android/a/d;->h:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/a/d;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v0, p0, Lcom/instagram/android/a/d;->h:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/venue/model/Venue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    const/4 v1, 0x0

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/a/d;->c:Landroid/content/Context;

    const-string v2, "custom_venues.json"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 376
    :goto_0
    if-nez v1, :cond_1

    .line 377
    const-string v0, "CustomVenuesAdapter"

    const-string v1, "Failed to acquire output stream for custom_venues.json"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_0
    :goto_1
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    const-string v2, "CustomVenuesAdapter"

    const-string v3, "File not found wile getting output stream for custom_venues.json"

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 381
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 382
    :cond_2
    const-string v0, "CustomVenuesAdapter"

    const-string v1, "Custom venues is null during serialization"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 387
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    const-string v2, "CustomVenues"

    invoke-static {}, Lcom/fasterxml/jackson/a/w;->a()Lcom/fasterxml/jackson/a/w;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/w;)V

    .line 392
    const-class v2, Lcom/instagram/venue/model/Venue;

    new-instance v3, Lcom/instagram/android/a/h;

    invoke-direct {v3, p0}, Lcom/instagram/android/a/h;-><init>(Lcom/instagram/android/a/d;)V

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 394
    new-instance v2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    .line 397
    :try_start_1
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 402
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 405
    :catch_1
    move-exception v0

    goto :goto_1

    .line 398
    :catch_2
    move-exception v0

    .line 399
    :try_start_3
    const-string v2, "CustomVenuesAdapter"

    const-string v3, "Exception while writing out custom_venues.json"

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 402
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 405
    :catch_3
    move-exception v0

    goto :goto_1

    .line 401
    :catchall_0
    move-exception v0

    .line 402
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 404
    :goto_2
    throw v0

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)Lcom/instagram/venue/model/Venue;
    .locals 3
    .parameter

    .prologue
    .line 149
    if-eqz p1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/instagram/android/a/d;->h:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/a/d;->h:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/instagram/android/a/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/venue/model/Venue;

    .line 154
    invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()I
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/instagram/android/a/d;->g()I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/instagram/android/a/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/a/d;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private c(I)Lcom/instagram/venue/model/Venue;
    .locals 1
    .parameter

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/instagram/android/a/d;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    iget-object v0, p0, Lcom/instagram/android/a/d;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/venue/model/Venue;

    :goto_0
    return-object v0

    .line 166
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/a/d;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/venue/model/Venue;

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private d()V
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/instagram/android/a/d;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 298
    iget-object v0, p0, Lcom/instagram/android/a/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/venue/model/Venue;

    .line 299
    invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/instagram/android/a/d;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    :cond_1
    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    .line 314
    iget-object v0, p0, Lcom/instagram/android/a/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 315
    iget-object v0, p0, Lcom/instagram/android/a/d;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 317
    const/4 v0, 0x0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/instagram/android/a/d;->c:Landroid/content/Context;

    const-string v2, "custom_venues.json"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 321
    :goto_0
    if-eqz v1, :cond_0

    .line 326
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    const-string v2, "CustomVenueModule"

    invoke-static {}, Lcom/fasterxml/jackson/a/w;->a()Lcom/fasterxml/jackson/a/w;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/w;)V

    .line 327
    const-class v2, Lcom/instagram/venue/model/Venue;

    new-instance v3, Lcom/instagram/android/a/g;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/instagram/android/a/g;-><init>(B)V

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 329
    new-instance v2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    .line 330
    new-instance v2, Lcom/instagram/android/a/e;

    invoke-direct {v2, p0}, Lcom/instagram/android/a/e;-><init>(Lcom/instagram/android/a/d;)V

    .line 334
    :try_start_1
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 335
    iget-object v2, p0, Lcom/instagram/android/a/d;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 341
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 347
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/instagram/android/a/d;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 348
    iget-object v0, p0, Lcom/instagram/android/a/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/venue/model/Venue;

    .line 349
    iget-object v2, p0, Lcom/instagram/android/a/d;->h:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 336
    :catch_1
    move-exception v0

    .line 337
    :try_start_3
    const-string v2, "CustomVenuesAdapter"

    const-string v3, "Failed to decode custom_venues.json, deleting file."

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    iget-object v0, p0, Lcom/instagram/android/a/d;->c:Landroid/content/Context;

    const-string v2, "custom_venues.json"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 344
    :catch_2
    move-exception v0

    goto :goto_1

    .line 340
    :catchall_0
    move-exception v0

    .line 341
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 343
    :goto_3
    throw v0

    .line 344
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_3

    .line 351
    :cond_1
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 354
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/instagram/android/a/d;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 355
    new-instance v1, Lcom/instagram/android/a/f;

    invoke-direct {v1, p0, v0}, Lcom/instagram/android/a/f;-><init>(Lcom/instagram/android/a/d;Ljava/util/List;)V

    .line 362
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 363
    return-void
.end method

.method private g()I
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 419
    const/4 v0, 0x1

    .line 421
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/instagram/android/a/d;->d:Landroid/location/Location;

    return-object v0
.end method

.method public final a(I)Lcom/instagram/venue/model/Venue;
    .locals 2
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/instagram/android/a/d;->c()I

    move-result v0

    .line 115
    if-ge p1, v0, :cond_1

    .line 116
    invoke-direct {p0, p1}, Lcom/instagram/android/a/d;->c(I)Lcom/instagram/venue/model/Venue;

    move-result-object v0

    .line 140
    :cond_0
    :goto_0
    return-object v0

    .line 120
    :cond_1
    sub-int v0, p1, v0

    .line 122
    packed-switch v0, :pswitch_data_0

    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Get item called for unsupported footer row"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/instagram/android/a/d;->b(Ljava/lang/String;)Lcom/instagram/venue/model/Venue;

    move-result-object v0

    .line 126
    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/android/a/d;->d:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/instagram/venue/a/a;->a(Ljava/lang/String;Landroid/location/Location;)Lcom/instagram/venue/model/Venue;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->j()V

    .line 135
    invoke-direct {p0, v0}, Lcom/instagram/android/a/d;->a(Lcom/instagram/venue/model/Venue;)V

    .line 136
    invoke-direct {p0}, Lcom/instagram/android/a/d;->f()V

    goto :goto_0

    .line 140
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/location/Location;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/instagram/android/a/d;->d:Landroid/location/Location;

    .line 307
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/instagram/android/a/d;->a:Ljava/lang/String;

    .line 292
    invoke-direct {p0}, Lcom/instagram/android/a/d;->d()V

    .line 293
    invoke-virtual {p0}, Lcom/instagram/android/a/d;->notifyDataSetChanged()V

    .line 294
    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/venue/model/Venue;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/a/d;->e:Z

    .line 427
    iput-boolean p2, p0, Lcom/instagram/android/a/d;->f:Z

    .line 428
    iget-object v0, p0, Lcom/instagram/android/a/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 429
    iget-object v0, p0, Lcom/instagram/android/a/d;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 430
    invoke-virtual {p0}, Lcom/instagram/android/a/d;->notifyDataSetChanged()V

    .line 431
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/a/d;->e:Z

    .line 435
    invoke-virtual {p0}, Lcom/instagram/android/a/d;->notifyDataSetChanged()V

    .line 436
    return-void
.end method

.method public final b(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 409
    invoke-direct {p0}, Lcom/instagram/android/a/d;->g()I

    move-result v2

    if-nez v2, :cond_1

    .line 414
    :cond_0
    :goto_0
    return v0

    .line 413
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/a/d;->c()I

    move-result v2

    .line 414
    if-lt p1, v2, :cond_0

    sub-int v2, p1, v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getCount()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 86
    invoke-direct {p0}, Lcom/instagram/android/a/d;->c()I

    move-result v0

    .line 88
    iget-boolean v2, p0, Lcom/instagram/android/a/d;->f:Z

    if-eqz v2, :cond_0

    .line 89
    add-int/lit8 v0, v0, 0x1

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/a/d;->g()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 93
    add-int/lit8 v0, v0, 0x2

    .line 99
    :cond_1
    :goto_0
    return v0

    .line 94
    :cond_2
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/instagram/android/a/d;->e:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 96
    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/instagram/android/a/d;->a(I)Lcom/instagram/venue/model/Venue;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 175
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 199
    invoke-direct {p0}, Lcom/instagram/android/a/d;->c()I

    move-result v1

    .line 202
    if-ge p1, v1, :cond_0

    .line 203
    const/4 v0, 0x2

    .line 228
    :goto_0
    :pswitch_0
    return v0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/a/d;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    const/4 v0, 0x3

    goto :goto_0

    .line 211
    :cond_1
    sub-int v1, p1, v1

    .line 213
    invoke-direct {p0}, Lcom/instagram/android/a/d;->g()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 214
    packed-switch v1, :pswitch_data_0

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/android/a/d;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/instagram/android/a/d;->f:Z

    if-eqz v0, :cond_3

    .line 223
    const/4 v0, 0x4

    goto :goto_0

    .line 216
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 228
    :cond_3
    const/4 v0, -0x2

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/instagram/android/a/d;->getItemViewType(I)I

    move-result v0

    .line 188
    if-nez p2, :cond_0

    .line 189
    invoke-direct {p0, v0, p3}, Lcom/instagram/android/a/d;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 192
    .end local p2
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/instagram/android/a/d;->a(IILandroid/view/View;)V

    .line 194
    return-object p2
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x5

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/instagram/android/a/d;->g()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/a/d;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
