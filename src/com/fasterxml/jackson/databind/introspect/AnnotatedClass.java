// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.fasterxml.jackson.databind.introspect:
//            Annotated, AnnotationMap, AnnotatedMember, AnnotatedMethodMap, 
//            AnnotatedMethod, MemberKey, AnnotatedConstructor, AnnotatedField

public final class AnnotatedClass extends Annotated
{

    private static final AnnotationMap NO_ANNOTATION_MAPS[] = new AnnotationMap[0];
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final Class _class;
    protected AnnotationMap _classAnnotations;
    protected List _constructors;
    protected List _creatorMethods;
    protected boolean _creatorsResolved;
    protected AnnotatedConstructor _defaultConstructor;
    protected List _fields;
    protected AnnotatedMethodMap _memberMethods;
    protected final ClassIntrospector.MixInResolver _mixInResolver;
    protected final Class _primaryMixIn;
    protected final List _superTypes;

    private AnnotatedClass(Class class1, List list, AnnotationIntrospector annotationintrospector, ClassIntrospector.MixInResolver mixinresolver, AnnotationMap annotationmap)
    {
        _creatorsResolved = false;
        _class = class1;
        _superTypes = list;
        _annotationIntrospector = annotationintrospector;
        _mixInResolver = mixinresolver;
        Class class2;
        if (_mixInResolver == null)
        {
            class2 = null;
        } else
        {
            class2 = _mixInResolver.findMixInClassFor(_class);
        }
        _primaryMixIn = class2;
        _classAnnotations = annotationmap;
    }

    private void _addAnnotationsIfNotPresent(AnnotatedMember annotatedmember, Annotation aannotation[])
    {
        if (aannotation != null)
        {
            int i = aannotation.length;
            LinkedList linkedlist = null;
            int j = 0;
            while (j < i) 
            {
                Annotation annotation = aannotation[j];
                if (_isAnnotationBundle(annotation))
                {
                    if (linkedlist == null)
                    {
                        linkedlist = new LinkedList();
                    }
                    linkedlist.add(annotation.annotationType().getDeclaredAnnotations());
                } else
                {
                    annotatedmember.addIfNotPresent(annotation);
                }
                j++;
            }
            if (linkedlist != null)
            {
                for (Iterator iterator = linkedlist.iterator(); iterator.hasNext(); _addAnnotationsIfNotPresent(annotatedmember, (Annotation[])iterator.next())) { }
            }
        }
    }

    private void _addAnnotationsIfNotPresent(AnnotationMap annotationmap, Annotation aannotation[])
    {
        if (aannotation != null)
        {
            int i = aannotation.length;
            LinkedList linkedlist = null;
            int j = 0;
            while (j < i) 
            {
                Annotation annotation = aannotation[j];
                if (_isAnnotationBundle(annotation))
                {
                    if (linkedlist == null)
                    {
                        linkedlist = new LinkedList();
                    }
                    linkedlist.add(annotation.annotationType().getDeclaredAnnotations());
                } else
                {
                    annotationmap.addIfNotPresent(annotation);
                }
                j++;
            }
            if (linkedlist != null)
            {
                for (Iterator iterator = linkedlist.iterator(); iterator.hasNext(); _addAnnotationsIfNotPresent(annotationmap, (Annotation[])iterator.next())) { }
            }
        }
    }

    private void _addOrOverrideAnnotations(AnnotatedMember annotatedmember, Annotation aannotation[])
    {
        if (aannotation != null)
        {
            int i = aannotation.length;
            LinkedList linkedlist = null;
            int j = 0;
            while (j < i) 
            {
                Annotation annotation = aannotation[j];
                if (_isAnnotationBundle(annotation))
                {
                    if (linkedlist == null)
                    {
                        linkedlist = new LinkedList();
                    }
                    linkedlist.add(annotation.annotationType().getDeclaredAnnotations());
                } else
                {
                    annotatedmember.addOrOverride(annotation);
                }
                j++;
            }
            if (linkedlist != null)
            {
                for (Iterator iterator = linkedlist.iterator(); iterator.hasNext(); _addOrOverrideAnnotations(annotatedmember, (Annotation[])iterator.next())) { }
            }
        }
    }

    private AnnotationMap _emptyAnnotationMap()
    {
        return new AnnotationMap();
    }

    private AnnotationMap[] _emptyAnnotationMaps(int i)
    {
        AnnotationMap aannotationmap[];
        if (i == 0)
        {
            aannotationmap = NO_ANNOTATION_MAPS;
        } else
        {
            aannotationmap = new AnnotationMap[i];
            int j = 0;
            while (j < i) 
            {
                aannotationmap[j] = _emptyAnnotationMap();
                j++;
            }
        }
        return aannotationmap;
    }

    private final boolean _isAnnotationBundle(Annotation annotation)
    {
        return _annotationIntrospector != null && _annotationIntrospector.isAnnotationBundle(annotation);
    }

    private boolean _isIncludableField(Field field)
    {
        int i;
        if (!field.isSynthetic())
        {
            if (!Modifier.isStatic(i = field.getModifiers()) && !Modifier.isTransient(i))
            {
                return true;
            }
        }
        return false;
    }

    public static AnnotatedClass construct(Class class1, AnnotationIntrospector annotationintrospector, ClassIntrospector.MixInResolver mixinresolver)
    {
        return new AnnotatedClass(class1, ClassUtil.findSuperTypes(class1, null), annotationintrospector, mixinresolver, null);
    }

    public static AnnotatedClass constructWithoutSuperTypes(Class class1, AnnotationIntrospector annotationintrospector, ClassIntrospector.MixInResolver mixinresolver)
    {
        return new AnnotatedClass(class1, Collections.emptyList(), annotationintrospector, mixinresolver, null);
    }

    private void resolveClassAnnotations()
    {
        _classAnnotations = new AnnotationMap();
        if (_annotationIntrospector != null)
        {
            if (_primaryMixIn != null)
            {
                _addClassMixIns(_classAnnotations, _class, _primaryMixIn);
            }
            _addAnnotationsIfNotPresent(_classAnnotations, _class.getDeclaredAnnotations());
            Class class1;
            for (Iterator iterator = _superTypes.iterator(); iterator.hasNext(); _addAnnotationsIfNotPresent(_classAnnotations, class1.getDeclaredAnnotations()))
            {
                class1 = (Class)iterator.next();
                _addClassMixIns(_classAnnotations, class1);
            }

            _addClassMixIns(_classAnnotations, java/lang/Object);
        }
    }

    private void resolveCreators()
    {
        int i;
        int k1;
        int l1;
        i = 0;
        Constructor aconstructor[] = _class.getDeclaredConstructors();
        int j = aconstructor.length;
        int k = 0;
        ArrayList arraylist = null;
        while (k < j) 
        {
            Constructor constructor = aconstructor[k];
            if (constructor.getParameterTypes().length == 0)
            {
                _defaultConstructor = _constructConstructor(constructor, true);
            } else
            {
                if (arraylist == null)
                {
                    arraylist = new ArrayList(Math.max(10, aconstructor.length));
                }
                arraylist.add(_constructConstructor(constructor, false));
            }
            k++;
        }
        if (arraylist == null)
        {
            _constructors = Collections.emptyList();
        } else
        {
            _constructors = arraylist;
        }
        if (_primaryMixIn != null && (_defaultConstructor != null || !_constructors.isEmpty()))
        {
            _addConstructorMixIns(_primaryMixIn);
        }
        if (_annotationIntrospector == null) goto _L2; else goto _L1
_L1:
        if (_defaultConstructor != null && _annotationIntrospector.hasIgnoreMarker(_defaultConstructor))
        {
            _defaultConstructor = null;
        }
        if (_constructors == null) goto _L2; else goto _L3
_L3:
        k1 = _constructors.size();
_L5:
        l1 = k1 - 1;
        if (l1 < 0) goto _L2; else goto _L4
_L4:
        ArrayList arraylist1;
        if (_annotationIntrospector.hasIgnoreMarker((AnnotatedMember)_constructors.get(l1)))
        {
            _constructors.remove(l1);
            k1 = l1;
        } else
        {
            k1 = l1;
        }
        if (true) goto _L5; else goto _L2
_L2:
        Method amethod[] = _class.getDeclaredMethods();
        int l = amethod.length;
        arraylist1 = null;
        for (; i < l; i++)
        {
            Method method = amethod[i];
            if (!Modifier.isStatic(method.getModifiers()))
            {
                continue;
            }
            if (arraylist1 == null)
            {
                arraylist1 = new ArrayList(8);
            }
            arraylist1.add(_constructCreatorMethod(method));
        }

        if (arraylist1 != null) goto _L7; else goto _L6
_L6:
        _creatorMethods = Collections.emptyList();
_L9:
        _creatorsResolved = true;
        return;
_L7:
        _creatorMethods = arraylist1;
        if (_primaryMixIn != null)
        {
            _addFactoryMixIns(_primaryMixIn);
        }
        if (_annotationIntrospector == null)
        {
            continue;
        }
        int i1 = _creatorMethods.size();
        do
        {
            int j1 = i1 - 1;
            if (j1 < 0)
            {
                continue;
            }
            if (_annotationIntrospector.hasIgnoreMarker((AnnotatedMember)_creatorMethods.get(j1)))
            {
                _creatorMethods.remove(j1);
                i1 = j1;
            } else
            {
                i1 = j1;
            }
        } while (true);
        if (true) goto _L9; else goto _L8
_L8:
    }

    private void resolveFields()
    {
        Map map = _findFields(_class, null);
        if (map == null || map.size() == 0)
        {
            _fields = Collections.emptyList();
            return;
        } else
        {
            _fields = new ArrayList(map.size());
            _fields.addAll(map.values());
            return;
        }
    }

    private void resolveMemberMethods()
    {
        AnnotatedMethodMap annotatedmethodmap;
        _memberMethods = new AnnotatedMethodMap();
        annotatedmethodmap = new AnnotatedMethodMap();
        _addMemberMethods(_class, _memberMethods, _primaryMixIn, annotatedmethodmap);
        Iterator iterator = _superTypes.iterator();
        while (iterator.hasNext()) 
        {
            Class class2 = (Class)iterator.next();
            Class class3;
            if (_mixInResolver == null)
            {
                class3 = null;
            } else
            {
                class3 = _mixInResolver.findMixInClassFor(class2);
            }
            _addMemberMethods(class2, _memberMethods, class3, annotatedmethodmap);
        }
        if (_mixInResolver != null)
        {
            Class class1 = _mixInResolver.findMixInClassFor(java/lang/Object);
            if (class1 != null)
            {
                _addMethodMixIns(_class, _memberMethods, class1, annotatedmethodmap);
            }
        }
        if (_annotationIntrospector == null || annotatedmethodmap.isEmpty()) goto _L2; else goto _L1
_L1:
        Iterator iterator1 = annotatedmethodmap.iterator();
_L3:
        AnnotatedMethod annotatedmethod;
        if (!iterator1.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        annotatedmethod = (AnnotatedMethod)iterator1.next();
        Method method = java/lang/Object.getDeclaredMethod(annotatedmethod.getName(), annotatedmethod.getRawParameterTypes());
        if (method != null)
        {
            try
            {
                AnnotatedMethod annotatedmethod1 = _constructMethod(method);
                _addMixOvers(annotatedmethod.getAnnotated(), annotatedmethod1, false);
                _memberMethods.add(annotatedmethod1);
            }
            catch (Exception exception) { }
        }
        if (true) goto _L3; else goto _L2
_L2:
    }

    protected final void _addClassMixIns(AnnotationMap annotationmap, Class class1)
    {
        if (_mixInResolver != null)
        {
            _addClassMixIns(annotationmap, class1, _mixInResolver.findMixInClassFor(class1));
        }
    }

    protected final void _addClassMixIns(AnnotationMap annotationmap, Class class1, Class class2)
    {
        if (class2 != null)
        {
            _addAnnotationsIfNotPresent(annotationmap, class2.getDeclaredAnnotations());
            Iterator iterator = ClassUtil.findSuperTypes(class2, class1).iterator();
            while (iterator.hasNext()) 
            {
                _addAnnotationsIfNotPresent(annotationmap, ((Class)iterator.next()).getDeclaredAnnotations());
            }
        }
    }

    protected final void _addConstructorMixIns(Class class1)
    {
        int i;
        MemberKey amemberkey[];
        Constructor constructor;
        Constructor aconstructor[];
        int j;
        int k;
        if (_constructors == null)
        {
            i = 0;
        } else
        {
            i = _constructors.size();
        }
        aconstructor = class1.getDeclaredConstructors();
        j = aconstructor.length;
        k = 0;
        amemberkey = null;
        if (k >= j) goto _L2; else goto _L1
_L1:
        constructor = aconstructor[k];
        if (constructor.getParameterTypes().length != 0) goto _L4; else goto _L3
_L3:
        if (_defaultConstructor != null)
        {
            _addMixOvers(constructor, _defaultConstructor, false);
        }
_L7:
        k++;
        break MISSING_BLOCK_LABEL_24;
_L4:
        MemberKey amemberkey1[];
        MemberKey memberkey;
        int l;
        if (amemberkey == null)
        {
            amemberkey1 = new MemberKey[i];
            for (int i1 = 0; i1 < i; i1++)
            {
                amemberkey1[i1] = new MemberKey(((AnnotatedConstructor)_constructors.get(i1)).getAnnotated());
            }

        } else
        {
            amemberkey1 = amemberkey;
        }
        memberkey = new MemberKey(constructor);
        l = 0;
_L5:
label0:
        {
            if (l >= i)
            {
                break MISSING_BLOCK_LABEL_210;
            }
            if (!memberkey.equals(amemberkey1[l]))
            {
                break label0;
            }
            _addMixOvers(constructor, (AnnotatedConstructor)_constructors.get(l), true);
            amemberkey = amemberkey1;
        }
        continue; /* Loop/switch isn't completed */
        l++;
        if (true) goto _L5; else goto _L2
_L2:
        return;
        continue; /* Loop/switch isn't completed */
        amemberkey = amemberkey1;
        if (true) goto _L7; else goto _L6
_L6:
    }

    protected final void _addFactoryMixIns(Class class1)
    {
        MemberKey amemberkey[];
        int i;
        Method amethod[];
        int j;
        int k;
        amemberkey = null;
        i = _creatorMethods.size();
        amethod = class1.getDeclaredMethods();
        j = amethod.length;
        k = 0;
_L7:
        if (k >= j) goto _L2; else goto _L1
_L1:
        Method method;
        MemberKey amemberkey1[];
        MemberKey memberkey;
        int l;
        method = amethod[k];
        if (!Modifier.isStatic(method.getModifiers()) || method.getParameterTypes().length == 0)
        {
            break MISSING_BLOCK_LABEL_187;
        }
        if (amemberkey == null)
        {
            amemberkey1 = new MemberKey[i];
            for (int i1 = 0; i1 < i; i1++)
            {
                amemberkey1[i1] = new MemberKey(((AnnotatedMethod)_creatorMethods.get(i1)).getAnnotated());
            }

        } else
        {
            amemberkey1 = amemberkey;
        }
        memberkey = new MemberKey(method);
        l = 0;
_L8:
        if (l >= i) goto _L4; else goto _L3
_L3:
        if (!memberkey.equals(amemberkey1[l])) goto _L6; else goto _L5
_L5:
        _addMixOvers(method, (AnnotatedMethod)_creatorMethods.get(l), true);
_L4:
        k++;
        amemberkey = amemberkey1;
          goto _L7
_L6:
        l++;
          goto _L8
_L2:
        return;
        amemberkey1 = amemberkey;
          goto _L4
    }

    protected final void _addFieldMixIns(Class class1, Class class2, Map map)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(class2);
        ClassUtil.findSuperTypes(class2, class1, arraylist);
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext();)
        {
            Field afield[] = ((Class)iterator.next()).getDeclaredFields();
            int i = afield.length;
            int j = 0;
            while (j < i) 
            {
                Field field = afield[j];
                if (_isIncludableField(field))
                {
                    AnnotatedField annotatedfield = (AnnotatedField)map.get(field.getName());
                    if (annotatedfield != null)
                    {
                        _addOrOverrideAnnotations(annotatedfield, field.getDeclaredAnnotations());
                    }
                }
                j++;
            }
        }

    }

    protected final void _addMemberMethods(Class class1, AnnotatedMethodMap annotatedmethodmap, Class class2, AnnotatedMethodMap annotatedmethodmap1)
    {
        if (class2 != null)
        {
            _addMethodMixIns(class1, annotatedmethodmap, class2, annotatedmethodmap1);
        }
        if (class1 != null)
        {
            Method amethod[] = class1.getDeclaredMethods();
            int i = amethod.length;
            int j = 0;
            while (j < i) 
            {
                Method method = amethod[j];
                if (_isIncludableMemberMethod(method))
                {
                    AnnotatedMethod annotatedmethod = annotatedmethodmap.find(method);
                    if (annotatedmethod == null)
                    {
                        AnnotatedMethod annotatedmethod1 = _constructMethod(method);
                        annotatedmethodmap.add(annotatedmethod1);
                        AnnotatedMethod annotatedmethod2 = annotatedmethodmap1.remove(method);
                        if (annotatedmethod2 != null)
                        {
                            _addMixOvers(annotatedmethod2.getAnnotated(), annotatedmethod1, false);
                        }
                    } else
                    {
                        _addMixUnders(method, annotatedmethod);
                        if (annotatedmethod.getDeclaringClass().isInterface() && !method.getDeclaringClass().isInterface())
                        {
                            annotatedmethodmap.add(annotatedmethod.withMethod(method));
                        }
                    }
                }
                j++;
            }
        }
    }

    protected final void _addMethodMixIns(Class class1, AnnotatedMethodMap annotatedmethodmap, Class class2, AnnotatedMethodMap annotatedmethodmap1)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(class2);
        ClassUtil.findSuperTypes(class2, class1, arraylist);
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext();)
        {
            Method amethod[] = ((Class)iterator.next()).getDeclaredMethods();
            int i = amethod.length;
            int j = 0;
            while (j < i) 
            {
                Method method = amethod[j];
                if (_isIncludableMemberMethod(method))
                {
                    AnnotatedMethod annotatedmethod = annotatedmethodmap.find(method);
                    if (annotatedmethod != null)
                    {
                        _addMixUnders(method, annotatedmethod);
                    } else
                    {
                        annotatedmethodmap1.add(_constructMethod(method));
                    }
                }
                j++;
            }
        }

    }

    protected final void _addMixOvers(Constructor constructor, AnnotatedConstructor annotatedconstructor, boolean flag)
    {
        _addOrOverrideAnnotations(annotatedconstructor, constructor.getDeclaredAnnotations());
        if (flag)
        {
            Annotation aannotation[][] = constructor.getParameterAnnotations();
            int i = aannotation.length;
            for (int j = 0; j < i; j++)
            {
                Annotation aannotation1[] = aannotation[j];
                int k = aannotation1.length;
                for (int l = 0; l < k; l++)
                {
                    annotatedconstructor.addOrOverrideParam(j, aannotation1[l]);
                }

            }

        }
    }

    protected final void _addMixOvers(Method method, AnnotatedMethod annotatedmethod, boolean flag)
    {
        _addOrOverrideAnnotations(annotatedmethod, method.getDeclaredAnnotations());
        if (flag)
        {
            Annotation aannotation[][] = method.getParameterAnnotations();
            int i = aannotation.length;
            for (int j = 0; j < i; j++)
            {
                Annotation aannotation1[] = aannotation[j];
                int k = aannotation1.length;
                for (int l = 0; l < k; l++)
                {
                    annotatedmethod.addOrOverrideParam(j, aannotation1[l]);
                }

            }

        }
    }

    protected final void _addMixUnders(Method method, AnnotatedMethod annotatedmethod)
    {
        _addAnnotationsIfNotPresent(annotatedmethod, method.getDeclaredAnnotations());
    }

    protected final AnnotationMap _collectRelevantAnnotations(Annotation aannotation[])
    {
        AnnotationMap annotationmap = new AnnotationMap();
        _addAnnotationsIfNotPresent(annotationmap, aannotation);
        return annotationmap;
    }

    protected final AnnotationMap[] _collectRelevantAnnotations(Annotation aannotation[][])
    {
        int i = aannotation.length;
        AnnotationMap aannotationmap[] = new AnnotationMap[i];
        for (int j = 0; j < i; j++)
        {
            aannotationmap[j] = _collectRelevantAnnotations(aannotation[j]);
        }

        return aannotationmap;
    }

    protected final AnnotatedConstructor _constructConstructor(Constructor constructor, boolean flag)
    {
        if (_annotationIntrospector == null)
        {
            return new AnnotatedConstructor(constructor, _emptyAnnotationMap(), _emptyAnnotationMaps(constructor.getParameterTypes().length));
        }
        if (flag)
        {
            return new AnnotatedConstructor(constructor, _collectRelevantAnnotations(constructor.getDeclaredAnnotations()), null);
        }
        Annotation aannotation[][] = constructor.getParameterAnnotations();
        int i = constructor.getParameterTypes().length;
        if (i != aannotation.length)
        {
            Class class1 = constructor.getDeclaringClass();
            AnnotationMap aannotationmap[];
            Annotation aannotation1[][];
            if (class1.isEnum() && i == 2 + aannotation.length)
            {
                aannotation1 = new Annotation[2 + aannotation.length][];
                System.arraycopy(aannotation, 0, aannotation1, 2, aannotation.length);
                aannotationmap = _collectRelevantAnnotations(aannotation1);
            } else
            if (class1.isMemberClass() && i == 1 + aannotation.length)
            {
                aannotation1 = new Annotation[1 + aannotation.length][];
                System.arraycopy(aannotation, 0, aannotation1, 1, aannotation.length);
                aannotationmap = _collectRelevantAnnotations(aannotation1);
            } else
            {
                aannotation1 = aannotation;
                aannotationmap = null;
            }
            if (aannotationmap == null)
            {
                throw new IllegalStateException((new StringBuilder("Internal error: constructor for ")).append(constructor.getDeclaringClass().getName()).append(" has mismatch: ").append(i).append(" parameters; ").append(aannotation1.length).append(" sets of annotations").toString());
            }
        } else
        {
            aannotationmap = _collectRelevantAnnotations(aannotation);
        }
        return new AnnotatedConstructor(constructor, _collectRelevantAnnotations(constructor.getDeclaredAnnotations()), aannotationmap);
    }

    protected final AnnotatedMethod _constructCreatorMethod(Method method)
    {
        if (_annotationIntrospector == null)
        {
            return new AnnotatedMethod(method, _emptyAnnotationMap(), _emptyAnnotationMaps(method.getParameterTypes().length));
        } else
        {
            return new AnnotatedMethod(method, _collectRelevantAnnotations(method.getDeclaredAnnotations()), _collectRelevantAnnotations(method.getParameterAnnotations()));
        }
    }

    protected final AnnotatedField _constructField(Field field)
    {
        if (_annotationIntrospector == null)
        {
            return new AnnotatedField(field, _emptyAnnotationMap());
        } else
        {
            return new AnnotatedField(field, _collectRelevantAnnotations(field.getDeclaredAnnotations()));
        }
    }

    protected final AnnotatedMethod _constructMethod(Method method)
    {
        if (_annotationIntrospector == null)
        {
            return new AnnotatedMethod(method, _emptyAnnotationMap(), null);
        } else
        {
            return new AnnotatedMethod(method, _collectRelevantAnnotations(method.getDeclaredAnnotations()), null);
        }
    }

    protected final Map _findFields(Class class1, Map map)
    {
        Class class2 = class1.getSuperclass();
        if (class2 != null)
        {
            map = _findFields(class2, map);
            Field afield[] = class1.getDeclaredFields();
            int i = afield.length;
            for (int j = 0; j < i; j++)
            {
                Field field = afield[j];
                if (!_isIncludableField(field))
                {
                    continue;
                }
                if (map == null)
                {
                    map = new LinkedHashMap();
                }
                map.put(field.getName(), _constructField(field));
            }

            if (_mixInResolver != null)
            {
                Class class3 = _mixInResolver.findMixInClassFor(class1);
                if (class3 != null)
                {
                    _addFieldMixIns(class2, class3, map);
                }
            }
        }
        return map;
    }

    protected final boolean _isIncludableMemberMethod(Method method)
    {
        while (Modifier.isStatic(method.getModifiers()) || method.isSynthetic() || method.isBridge() || method.getParameterTypes().length > 2) 
        {
            return false;
        }
        return true;
    }

    public final Iterable fields()
    {
        if (_fields == null)
        {
            resolveFields();
        }
        return _fields;
    }

    public final AnnotatedMethod findMethod(String s, Class aclass[])
    {
        if (_memberMethods == null)
        {
            resolveMemberMethods();
        }
        return _memberMethods.find(s, aclass);
    }

    protected final AnnotationMap getAllAnnotations()
    {
        if (_classAnnotations == null)
        {
            resolveClassAnnotations();
        }
        return _classAnnotations;
    }

    public final Class getAnnotated()
    {
        return _class;
    }

    public final volatile AnnotatedElement getAnnotated()
    {
        return getAnnotated();
    }

    public final Annotation getAnnotation(Class class1)
    {
        if (_classAnnotations == null)
        {
            resolveClassAnnotations();
        }
        return _classAnnotations.get(class1);
    }

    public final Annotations getAnnotations()
    {
        if (_classAnnotations == null)
        {
            resolveClassAnnotations();
        }
        return _classAnnotations;
    }

    public final List getConstructors()
    {
        if (!_creatorsResolved)
        {
            resolveCreators();
        }
        return _constructors;
    }

    public final AnnotatedConstructor getDefaultConstructor()
    {
        if (!_creatorsResolved)
        {
            resolveCreators();
        }
        return _defaultConstructor;
    }

    public final int getFieldCount()
    {
        if (_fields == null)
        {
            resolveFields();
        }
        return _fields.size();
    }

    public final Type getGenericType()
    {
        return _class;
    }

    public final int getMemberMethodCount()
    {
        if (_memberMethods == null)
        {
            resolveMemberMethods();
        }
        return _memberMethods.size();
    }

    public final int getModifiers()
    {
        return _class.getModifiers();
    }

    public final String getName()
    {
        return _class.getName();
    }

    public final Class getRawType()
    {
        return _class;
    }

    public final List getStaticMethods()
    {
        if (!_creatorsResolved)
        {
            resolveCreators();
        }
        return _creatorMethods;
    }

    public final boolean hasAnnotations()
    {
        if (_classAnnotations == null)
        {
            resolveClassAnnotations();
        }
        return _classAnnotations.size() > 0;
    }

    public final Iterable memberMethods()
    {
        if (_memberMethods == null)
        {
            resolveMemberMethods();
        }
        return _memberMethods;
    }

    public final String toString()
    {
        return (new StringBuilder("[AnnotedClass ")).append(_class.getName()).append("]").toString();
    }

    public final volatile Annotated withAnnotations(AnnotationMap annotationmap)
    {
        return withAnnotations(annotationmap);
    }

    public final AnnotatedClass withAnnotations(AnnotationMap annotationmap)
    {
        return new AnnotatedClass(_class, _superTypes, _annotationIntrospector, _mixInResolver, annotationmap);
    }

}
